---
title: Aurora Store Security
---

In CalyxOS, Aurora Store is not able to install apps silently or without user intervention. It is able however, to automatically update apps in the background, which can be turned off.

App stores cannot modify the fundamental security model of the Android operating system: When installing an update, the new app will only be accepted if verified to be from the same developer as the original version of the app. However, Android also always accepts the identity of the developer when first installing a new app, which is why it is important that the app repositories are not compromised.
