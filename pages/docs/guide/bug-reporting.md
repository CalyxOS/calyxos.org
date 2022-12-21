To report a bug, first determine whether you are experiencing a problem with an app or with your device.

**Does it appear to be an application crashing/misbehaving, as opposed to the entire phone?** If so, which app is it? Does the app disappear, lock up, or display an error? `adb logcat -b crash` may give some information on the problem, although it may or may not be useful to you, in terms of solving it. If it's related to one of CalyxOS's included apps, or if you think it's a CalyxOS-specific problem with a particular app, see [CalyxOS's GitLab issues](https://gitlab.com/CalyxOS/calyxos/-/issues) to look up existing problems, or create a new issue.

**Does the phone appear to be restarting or shutting down?** Do you see the manufacturer logo (e.g. Google) when it does, or only the CalyxOS boot animation, a permanent black screen, or something else? Unfortunately, this kind of diagnosis can be even more complicated than the former, and it would probably be useful for CalyxOS developers to have a look at a bug report file.

You can capture a bug report file for review by a trusted party by tapping the "Bug report" item in Developer Options ([see here](https://developer.android.com/studio/debug/dev-options#enable) for info on enabling) and choosing "Full report."

The next step is sharing the bug report file with a developer. Please note that bug reports contain sensitive information, so it is important to share them via a trusted channel and with a trusted person.

As of this writing, there are a few ways to do this (pick one):

* If you trust your email provider (hopefully you do!), send the bug report file as an email attachment or link (via a trusted private upload site) to **bugreports [AT] calyxos.org**. If sending an attachment, you may wish to delete it from your Sent mail afterward.
* [*Account required*] At [CalyxOS's GitLab issues](https://gitlab.com/CalyxOS/calyxos/-/issues), create a ***confidential issue***, or in an existing related issue, carefully attach your bug report file with an ***internal note***. (Again, be sure it is either a **confidential issue** or an **internal note** so that the bug report file is not public!)
* [*Account required*] Hop on to one of the primary [CalyxOS channels](https://calyxos.org/community/#bridges-for-the-chat-channels) and coordinate to get it shared that way. You should only share a bug report with someone who has a Moderator or Admin role in the channel, or who has been indicated as trustworthy by someone who has a Moderator or Admin role.
