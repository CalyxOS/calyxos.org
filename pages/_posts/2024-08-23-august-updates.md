---
title: August updates
date: 2024-08-23
---

* CalyxOS 5.10.1 for Pixel 4a (5G) and newer Pixels
* CalyxOS 5.10.3 for all other devices

## Explanation
* CalyxOS 5.10.0 was released to Security express on 7 August, Wednesday, 1 day after Google released the update.
* It had a bug, wherein SIM cards would not get detected.
* We released a bugfix update for that the next day, 8 August, Thursday.
* However, we noticed a bug with that as well. Chromium would crash for certain users.
* This was found and diagnosed by someone on our matrix development channel.
* Due to that, we didn't roll out the update to other channels.
* The team was also travelling and recovering from travel at that time, further adding to the delay.
* The chromium bug has since been fixed, and thus we're releasing the update (5.10.1) more broadly now.
## Rollout

### Pixel 4a (5G) and newer Pixels

* CalyxOS version: 5.10.1
* Build number: Ends with `24510020`

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 22 August, Thursday |  |
| Beta | 23 August, Friday |  |
| Stable | 26 August, Monday |  |

### All other devices

* CalyxOS version: 5.10.3
* Build number: Ends with `24510030`

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 29 August, Thursday |  |
| Beta | 30 August, Friday |  |
| Stable | 2 September, Monday |  |

## Note

{% include install/security_notes.html %}

## Matrix channel

* If you're having trouble trying to post messages to the [#CalyxOS](https://matrix.to/#/#CalyxOS:matrix.org) matrix channel, try to leave the channel if possible, and then try writing `/join #CalyxOS:matrix.org` in any chat in Matrix. That should re-connect you to the channel.
