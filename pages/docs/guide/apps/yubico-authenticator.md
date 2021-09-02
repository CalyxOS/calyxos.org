---
title: Yubico Authenticator
description: Generate OATH codes with YubiKey NEO over NFC
icon: /assets/images/apps/com.yubico.yubioath.png
---

<div class="button-bar" markdown="0">
<a class="btn" href="https://github.com/Yubico/yubioath-android">Source Code</a>
<a class="btn" href="https://github.com/Yubico/yubioath-android/issues">Report a Bug</a>
</div>

Generate One-Time Passwords (OTPs) using a YubiKey NEO hardware, connected using
NFC. It generates codes that are compatible with Google two-step verification,
and can be used with any other site that supports OATH HOTP/TOTP.

There are two apps for YubiKey NEO and OATH: YubiTOTP and YubiOATH. They work
differently, and both are supported, but to get the most features and best user
experience we recommend use of YubiOATH. The YubiTOTP app works with all YubiKey
NEOs, however it is more limited than the YubiOATH app. The YubiOATH app
requires that the (free software) ykneo-oath applet has been loaded on to the
YubiKey NEO. The YubiTOTP app is still maintained for backwards compatibility.
