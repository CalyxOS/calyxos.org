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
* You can also specify a user instead of a specific message to redact everything from that user.

##### Kick
`!kick @username:example.com #room:matrix.org`

* You can leave out the room if you'd like to kick them from all CalyxOS rooms.

##### Ban
`!ban @username:example.com calyx-bans spam`

* calyx-bans is our ban list, spam is the reason. spam automatically redacts messages.

#### Detailed usage guide

[Moderator's guide to Mjolnir (bot edition)](https://github.com/matrix-org/mjolnir/blob/main/docs/moderators.md)

We currently use two community lists and our own, `calyx-bans`.


[calyxos-matrix-room]: https://matrix.to/#/#calyxos-general:matrix.org
