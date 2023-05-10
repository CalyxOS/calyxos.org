---
title: Moderation policy and guidelines
---

## Policy

* We intend to try and moderate less, not more.
* The main channel [#CalyxOS:matrix.org][calyxos-matrix-room] should only be used for discussion about CalyxOS.
* Anything else should most likely be discussed in the off-topic channel, `#calyxos-offtopic:matrix.org`, or another appropriate channel, see [[community]]
* No GrapheneOS discussion of any form is allowed on any of our channels, or any other places such as Reddit. This is strictly enforced.
* A warning may be given first, followed by a kick and then a ban from all CalyxOS channels.

### Moderation bot

Moderation of the CalyxOS rooms is handled using [Draupnir](https://github.com/Gnuxie/Draupnir/), which is a hard fork of [Mjolnir](https://github.com/matrix-org/mjolnir), which we used to use previously.

#### Commonly used actions
##### Redact
`!redact <message permalink>`

* To redact a single message. The unique message ID (message permalink) is retrieved by right-clicking the timestamp of a message and copying the link target.

##### Kick
`!kick @username:example.com #room:matrix.org`

* Can leave out room to kick from all CalyxOS rooms

##### Ban
`!ban @username:example.com spam spam`

* Yes, that's an intentional repeat of `spam`

#### Detailed usage guide

[Moderator's guide to Mjolnir (bot edition)](https://github.com/matrix-org/mjolnir/blob/main/docs/moderators.md)

We currently only have one list configured, `spam`


[calyxos-matrix-room]: https://matrix.to/#/%23CalyxOS%3Amatrix.org?via=matrix.org