---
title: microG
---
microG can be bundled to make apps which require Google Play Services work, such as Google Camera, YouTube, Google Maps, etc. Not all apps will work though, apps such as Android Auto, Snapchat still don't work.

We're mainly concerned with bundling GmsCore, and FakeStore (a dummy package sharing the package name with the Google Play Store), which is required in addition to microG to make some apps such as YouTube work.

It needs a signature spoofing patch (more details about that available [here](https://gitlab.com/calyxos/calyxos/issues/31#note_136344191)).



There is another issue.

The way microG works, when you simply bundle it with the system and install that, not all Google services are enabled by default. One has to open microG settings and enable things like Google Device Registration and Google Cloud Messaging for certain apps, if needed. The issue with this is, with just microG installed, apps will check for play services and see that it's available. However, if we have not enabled the settings, they simply won't work, and fail silently.


Signal is a good way to test this. It works without Play Services, but if Play Services are installed, it will prefer to use them. If Device Registration and Cloud Messaging aren't enabled though, it will fail.

This is not exactly easily solvable in microG, since there is no easy way to knowing what app needs what service when it checks for the existence of play services.

I can think of four solutions
1) Enable Device Registration, Cloud Messaging and such by default - not good for privacy, not all users would like to have it enabled either.
2) Bundle a dummy app by default that responds negatively when apps check if Play Services are available (it's more than just a basic is package installed check so this would work).
   The SetupWizard would ask the user if they want microG / Play Services compatibility on first boot, and if the user answers positively, the actual microG apk would then be installed.
   If the user answers negatively, apps like Signal will still work just fine. The dummy app is needed since microG needs to be a system app.
3) Set a property or Setting in the SetupWizard.
   If that is set, we make the play services check return true.
   If that is not set, we make the play services check return false.
   Will require modifications to microG but it seems a lot simpler than the alternative.
   Can display this in the microG settings, and potentially allow it to be enabled / disabled if that works. It could also be enabled disabled per app, but that would take some extra work.
4) Simply disable microG from SetupWizard if user doesn't want it. Really simple, works well too.

That's it, the fourth idea seems ok.