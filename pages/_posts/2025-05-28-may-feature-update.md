---
title: May 2025 Feature update
date: 2025-05-28
---

* CalyxOS 6.7.23 - May 2025 Feature update for all supported devices
* Smaller update as we prepare for Android 16 with upstream release due next week

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Beta | 23 May, Friday |  |
| Security express | 27 May, Tuesday |  |
| Stable | 28 May, Wednesday | |

### Changelog
- CalyxOS 6.7.23
- May 2025 Feature update
- Seedvault: 
  - Restart backed-up apps by default
  - Reduced storage backup retention policy
    - 7 daily, 4 weekly, 3 monthly, and 2 yearly storage backups are retained now
  - Removed file backup snapshots that can't be decrypted
  - Caught more exceptions to handle errors better
- Fixed Microphone showing as "In use" indefinitely after prompted to unblock
- Fixed various settings for secondary users
- Chromium: 136.0.7103.125
- Updated all included apps
- Updated translations

## Note

{% include install/security_notes.html %}
