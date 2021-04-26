---
title: Datura Firewall
nav_title: Datura
---

The firewall could generally be considered to be composed of 3 layers for each of its features. A UI layer, the frameworks layer (see <https://developer.android.com/guide/platform#api-framework>), and the netd layer (see <https://developer.android.com/guide/platform#native-libs>).

### UI
This is the layer visibly exposed to users (toggles, text, ...).
It is responsible for passing down information (global toggle switched or app restriction applied, in which case it sends the UID of the app and the policy or rule related to the feature) about a user's selection to the frameworks for processing.

### Frameworks
Responsible for the first level of processing (e.g. sanity checks, state machine, ...), managing the dynamics of a feature (e.g. app in background) and passing down the inputs to netd to apply policies and rules.

### Netd
At its core, the firewall makes use of standard Linux networking utilities to process traffic (see <https://source.android.com/devices/architecture/hidl/network-stack>). Netd is responsible for the last level of processing and calls the networking utilities, passing in the input for any operation.

## Features

### Per-interface network usage restrictions
* Code: <https://review.calyxos.org/q/topic:data-restriction>

On devices with Linux kernel versions 4.9 and below, this setting uses iptables to add an app to the INPUT and OUTPUT chains and limits its traffic based on the specified incoming and outgoing networking interface.
On devices with Linux kernel versions higher than 4.9, the bandwidth restrictions make use of eBPF instead of iptables (see https://source.android.com/devices/tech/datausage/ebpf-traffic-monitor)

### Per-app network isolation
* Code: <https://review.calyxos.org/q/topic:network-isolation>

On devices with Linux kernel versions 4.9 and below, this setting uses iptables to add an app to the firewall isolated chain (which is referenced in the firewall INPUT and OUTPUT chains).
On devices with Linux kernel versions higher than 4.9, the bandwidth restrictions make use of eBPF instead of iptables (see https://source.android.com/devices/tech/datausage/ebpf-traffic-monitor)


### Background network access restrictions
* Code: <https://review.calyxos.org/q/topic:background-data>

This setting adds an app to the penalty box iptables chain. On AOSP, this chain can be reached via costly interface chains (metered networks, which mobile data and VPN networks default to, are considered costly). In CalyxOS, the penalty box is instead added at the bandwidth INPUT, OUTPUT and FORWARD chains so that all interfaces block background bandwidth

### Cleartext traffic restrictions
* Code: <https://review.calyxos.org/q/topic:global-no-cleartext>
* Code: <https://review.calyxos.org/q/topic:global-no-cleartext-allowlist>

The global cleartext restriction setting adds the cleartext detection chain to the strict mode OUTPUT chain and adds either the log or the reject penalty chain to the cleartext caught chain (which is part of the detection chain).
Additionally, a DNS whitelist chain is created (and inserted in the caught chain before the penalty chain) to allow udp traffic to the DNS port of a DNS address in order to establish a private DNS connection. Once established, the rule is removed.
In AOSP, each app can make and remove its own strict mode cleartext restriction chain. In CalyxOS, instead of the chain being removed an ACCEPT is applied. These chains are inserted before the global rule thereby taking priority over it.