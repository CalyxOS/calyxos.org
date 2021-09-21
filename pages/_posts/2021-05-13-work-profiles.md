---
title: Work profiles fix
date: 2021-05-13
---

The May update introduced a new Work Profile feature, allowing you to create a work profile directly from the Settings app without having to install any third party apps.

This feature is available under Settings -> System -> Multiple users - > Add user or profile -> Work profile

However, some of you may have noticed some crashes when trying to access certain functionality within the profile. We have identified the root cause and fixed it for new profiles going forward, till then you can run the following commands from your computer to fix it right away.

Run this from a computer where you have 'adb' installed:

```shell
adb shell pm list users
```

That will output something like:

```shell
Users:
        UserInfo{0:Owner:c13} running
        UserInfo{10:New Profile:1030} running
        UserInfo{11:Guest:404}
```

Note the `10` here, that is the user id of the Work profile.

Now, you can run the following commands to enable certain apps in the profile to fix some of the crashing. These apps are always required to be present in the profile but were missed due to an oversight which is what caused the crashes.

Replace `10` with the user id you saw above:

```shell
adb shell pm install-existing --user 10 com.android.contacts
adb shell pm install-existing --user 10 com.android.settings
adb shell pm install-existing --user 10 com.android.providers.downloads
adb shell pm install-existing --user 10 com.android.providers.downloads.ui
adb shell pm install-existing --user 10 com.android.documentsui
```

This is a one time fix and won't be required in future builds.

Our apologies for the inconvenience, and thank you for understanding!