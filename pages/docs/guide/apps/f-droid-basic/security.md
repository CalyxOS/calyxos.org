---
title: F-Droid Basic Security
---

The default repositories configured in CalyxOS are run by fdroid.org and CalyxOS itself. However, these additional repositories (sources) introduce the possibility of an attacker compromising the remote app repositories and serving a malicious update. To guard against this type of attack, these repositories go through multiple verification steps.

App stores cannot modify the fundamental security model of the Android operating system: When installing an update, the new app will only be accepted if verified to be from the same developer as the original version of the app. However, Android also always accepts the identity of the developer when first installing a new app, which is why the app repositories mustn't be compromised.

For more information, see [F-Droid security model](https://f-droid.org/en/docs/Security_Model/).
