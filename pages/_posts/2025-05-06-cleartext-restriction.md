---
title: Why we are phasing out the Cleartext Restriction feature
date: 2025-05-06
redirect_from: /global-no-cleartext/
---

* An in-depth explanation of our decision to retire the "Restrict cleartext network traffic" feature
* Next steps for users who are using this feature

### Overview

The "Restrict cleartext network traffic" setting was introduced in CalyxOS as [an additional layer of protection](/news/2021/04/08/big-april-update/){:target="_blank"},
aimed to block cleartext transmission. Cleartext transmission allows data to travel in network or communication channels without encrpytion or other protection layers.
It can occur in various types of communications, such as visiting a website, sending an email, or sharing a file.
Cleartext transmission sends data in plain, human-readable format, making it easier for unauthorized parties to read sensitive information, such as password, personal data, or private messages.
Therefore, we bulit this feature on AOSP's existing functionality in 2021 to improve overall device data security.
However, upon review, we have discovered that this feature bears significant limitations and usability concerns.

### What we learned // Why we made this decision

After investigating issues [#1948](https://gitlab.com/CalyxOS/calyxos/-/issues/1948){:target="_blank"} and [#2521](https://gitlab.com/CalyxOS/calyxos/-/issues/2521){:target="_blank"},
 our finding shows that AOSP’s cleartext restriction is not a comprehensive security mechanism.
It only inspects initial packets of a connection; once Transport Layer Security (TLS) is detected, the connection will beis marked secure, and there will be no further inspection.
An app could begin sending cleartext after the initial handshake without detection.
AOSP explicitly states that this feature is meant to prevent accidental cleartext traffic, not deliberate bypasses.


In addition to AOSP’s functional limitations, this feature created usability problems by conflicting with other features and services, such as:
* **Blocking DNS-over-HTTPS (DoH) protocol**: Private DNS setups using Cloudflare or Google failed silently.
* **Breaking QUIC traffic**: Many modern apps rely on QUIC protocol to transmit data. Despite the fact that QUIC traffic was encrypted by default, it was blocked.
* **Interfering with VPNs**: Some VPN traffic got misclassified as cleartext and blocked, affecting connectivity.

Given these problems, continuing to maintain a "best-effort" solution, one that users might mistakenly assume is fully secure,
 risks giving a false sense of protection while breaking access to other secure services and connection protocols.

### What's next

We have already started transitioning users away from this feature:
* In the February CalyxOS Feature update, users who had this feature enabled received a one-time notification on their device alerting them that the feature would be removed in a future update.
* In the April CalyxOS Feature update, users who still have this feature enabled will again receive a notification (linking here) informing them that it has been removed.

Instead of relying on this inadequate feature, you can use a VPN to protect your device's connection and data transmission.

Additionally, we will continue to improve our communications about CalyxOS' security and privacy features to ensure our users can make informed decisions and are aware of the best options for keeping their device secure and private.

### Related GitLab issues
* [#1948](https://gitlab.com/CalyxOS/calyxos/-/issues/1948){:target="_blank"} 
* [#2521](https://gitlab.com/CalyxOS/calyxos/-/issues/2521){:target="_blank"} 