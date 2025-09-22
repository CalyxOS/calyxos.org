---
title: Datura Firewall
description: Technical notes on CalyxOS built-in firewall app
nav_title: Datura
redirect_from:
    - /tech/datura/
    - /about/tech/datura/
---

The Datura Firewall (known as "Firewall" in CalyxOS) could generally be considered to be composed of 4 layers for each of its features: a UI layer, the [framework](https://developer.android.com/guide/platform#api-framework) layer, the [netd layer](https://developer.android.com/guide/platform#native-libs), and the [Connectivity module](https://source.android.com/docs/core/ota/modular-system/tethering) layer.

## Components

### UI
This is the layer visibly exposed to users (toggles, text, ...).

It is responsible for passing down information (global toggle switched or app restriction applied, in which case it sends the UID of the app and the policy or rule related to the feature) about a user's selection to the frameworks for processing.

CalyxOS uses a standalone app called Firewall for this, which is internally referred to as Datura. It is part of the [external/calyx/datura](https://gitlab.com/CalyxOS/platform_external_calyx_datura) repo. It is built separately in production via gradle, after which the production build is uploaded to the [prebuilts/calyx/datura](https://gitlab.com/CalyxOS/platform_prebuilts_calyx_datura).

### Framework
Responsible for the first level of processing (e.g. sanity checks, state machine, ...), managing the dynamics of a feature (e.g. app in background) and passing down the inputs to the Connectivity mainline module and netd to apply policies and rules.

### Connectivity mainline module
The [Connectivity mainline module](https://source.android.com/docs/core/ota/modular-system/tethering) - once called "Tethering", for which the upstream documentation has not yet been updated - is responsible for negotiating the various network connections used by apps and by the system, including whether the connection will be allowed or blocked and which network interfaces are permitted.

### Netd
At its core, the firewall makes use of standard Linux networking utilities to process traffic (see <https://source.android.com/devices/architecture/hidl/network-stack>). Netd is responsible for the last level of processing and calls the networking utilities, passing in the input for any operation.

## Features

### Network control for individual apps
* Code: <https://review.calyxos.org/q/topic:network-isolation>

This feature allows a user to turn off network access for an app entirely.

Under the hood, Android has a mode known as "restricted mode" which operates as an allowlist, permitting only specified apps to get online. CalyxOS's per-app network isolation uses similar underlying functionality, exposed via the Firewall app's primary per-app toggle. [We handle this within the Android framework](https://review.calyxos.org/q/I5fae5389776196175eba31f646efff6771824dcc).

These restrictions make use of [eBPF](https://source.android.com/devices/tech/datausage/ebpf-traffic-monitor).

### Transport type control for individual apps
* Code: <https://review.calyxos.org/q/topic:data-restriction>

By default, an app is able to communicate over any type of network, but the Firewall allows a user to change this and prevent access over a given network type ("transport type" in developer terms) - i.e. Wi-Fi, Mobile Data, or VPN - by turning off the respective toggle. CalyxOS takes multiple measures to ensure that an app can only communicate over the permitted network types:
* [**Give the Connectivity module a heads-up**](https://review.calyxos.org/c/CalyxOS/platform_frameworks_base/+/29906). Network policies are tracked by the Android framework, but unlike the Connectivity module, it is not on the front lines of network connectivity. To be sure that policies are able to take effect in real time, we need to share them with Connectivity.
* [**Remove access to routes**](https://review.calyxos.org/q/I79342edbec92090cca20853ba50ea7fd48ec81c2). A network can have "allowed UIDs" (allowed apps); we take advantage of this by ensuring that every network has allowed UIDs, and that these are required for communication. We do this in Connectivity, which ultimately informs Netd, which in turn adjusts the IP policy-based routing rules (as seen in `ip rule`) to accommodate the appropriate UID ranges.
* [**Add blocked apps to a denylist**](https://review.calyxos.org/q/I79342edbec92090cca20853ba50ea7fd48ec81c2). As an additional safeguard, and part of the same Connectivity change above, we compute which apps are disallowed for a given network. If and when that network is the active network, we add these apps to one of the eBPF denylists.
* [**Prevent network fallthrough and exclusions**](https://review.calyxos.org/q/I1b89587a54c3178dcbf0a78927392bb8fb36294f). On stock Android, an app's already-tracked connections may fall through from one network to another in various ways as a result of IP policy-based routing rules, subverting a user's desired restrictions.
* [**Special treatment for apps only allowed on VPN**](https://review.calyxos.org/q/Ia76465734cf3455c1c42e4aeab392a5d62212396). When an app's firewall toggles are set to block Wi-Fi and Mobile Data, we treat that app as if it is only allowed on a VPN. This functions the same as the "Block connections without VPN" feature, but on a per-app basis, and it adds an additional assurance that the app's traffic will not be allowed on any other type of network, including Ethernet.
* [**In VPN-only mode, block inbound connections from outside the VPN**](https://review.calyxos.org/q/Id7954816566cb06bf2e9869ea98b20678835df9d). We believe that the "Block connections without VPN" feature should apply to inbound connections, too, not just outbound ones. Android allows apps to operate servers running on arbitrary ports. When "Block connections without VPN" is turned on, we prevent such servers from being accessed over the local network or the device's WAN IP. The purpose of this is to prevent fingerprinting or identification that may be possible as a result of such ports being accessible from multiple networks, and to align behavior with expectations. 


### Background network access restrictions
* Code: <https://review.calyxos.org/q/topic:background-data>

This setting adds an app to the penalty box iptables chain. On AOSP, this chain can be reached via costly interface chains (metered networks, which mobile data and VPN networks default to, are considered costly). In CalyxOS, the penalty box is instead added at the bandwidth INPUT, OUTPUT and FORWARD chains so that all interfaces block background bandwidth.

"Background" is a category defined by AOSP that does not *necessarily* mean that the app is not active on the screen. Even if the app is not visibly in the foreground, it may in some circumstances be considered a foreground app. See [Foreground services overview](https://developer.android.com/develop/background-work/services/fgs) for more information.

### Preventing network access by default
* Code: <https://review.calyxos.org/q/hashtag:firewall-default-network-data>

In the Firewall app, we offer a setting to turn off network access by default for newly-installed apps.

### Other measures
Here are some other measures CalyxOS takes toward network isolation:
* [**Prevent DNS lookups for blocked apps**](https://review.calyxos.org/q/I912a4a2ee78a29ca8b7d8ff85e5ad7cf617c31a5).
* [**Do not add allowances for SDK sandbox apps**](https://review.calyxos.org/q/hashtag:sdksandbox).

We endeavor to keep the full list of firewall-related changes in the ["firewall" hashtag](https://review.calyxos.org/q/hashtag:firewall) on our [Gerrit](https://review.calyxos.org).

### Status bar indicator
* Code: <https://review.calyxos.org/q/topic:firewall-indicator>

When the foreground app is blocked from accessing the network, CalyxOS displays a crossed-out globe icon in the status bar to indicate this.

## Limitations
* Apps whose network access is prohibited can still use other methods to share information outside of the app. For example, they can use custom tabs, and they can open links in external apps.
* When the active network type is "VPN", the underlying network is not considered for restrictions and cannot be restricted in the current firewall design. This means that if you want an app to be allowed to communicate over a VPN, but you do not want it to utilize any mobile data, this is not possible via the firewall and will need to be accomplished via other means, such as [Data Saver](https://support.google.com/pixelphone/answer/7055392).
