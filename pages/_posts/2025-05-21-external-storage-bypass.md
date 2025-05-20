---
title: Important notice regarding external storage bypass vulnerability
date: 2025-05-21
---

* An AOSP security vulnerability allows third-party apps to bypass external storage restrictions and access sensitive folders without permissions.
* Google has received at least two reports of this issue, however, they have not released any public disclosure about status of the issue to this date.
* CalyxOS has released a fix to this issue with CalyxOS 6.6.22 and 6.6.23 in April 2025.

#### Problem
An Android Open Source Project (AOSP) security vulnerability was discovered that allowed third-party apps to bypass restrictions on the /sdcard/Android/data and /sdcard/Android/obb directories. By including "ignorable" Unicode characters (such as '\u200b', a zero-width space) in the path, unauthorized apps could gain access to other apps’ external storage folders, which could lead to the exposure of sensitive information.

#### Impact
The vulnerability allowed unauthorized discovery of installed apps and access to sensitive application data, which — depending on the apps' design — could include location information, synchronization logs, and other files not intended for cross-app access. An app could use this vulnerability to explore these folders even without having any storage permissions.

#### Affected devices
This issue impacts AOSP-based devices with kernel versions 4.19 or greater, which includes all [supported CalyxOS devices](https://calyxos.org/docs/guide/device-support/).

#### Current Status
The vulnerability has been fixed in CalyxOS [6.6.22 and 6.6.23](https://calyxos.org/news/2025/04/25/april-feature-update/), released in April 2025. This update restores expected external storage restrictions and prevents unauthorized access via this bypass technique.
Earlier this year, the CalyxOS team was alerted to this issue by our community and learned that Google has been made aware of the vulnerability. While it remains unresolved in AOSP releases (and stock Google Android) as of the publishing of this news post, CalyxOS has released its own fix to ensure users are protected. The CalyxOS team is monitoring if this issue will be disclosed and resolved in AOSP in the near future.

#### Recommendation for affected users
We strongly recommend all users update to the latest CalyxOS release (6.6.22, 6.6.23 or newer) to ensure this vulnerability is mitigated. Devices running older versions remain vulnerable since potential exploitations do not need any storage access permission. 
As always, we recommend adhering to best practices for digital hygiene in general; restrict unnecessary app permissions, minimize sharing your senstive personal data with apps, and remove apps you don't use. You can do this by exercising care when downloading apps to ensure they come from trusted sources, review individual app permissions periodically, stay cautious when you share personal data with apps, such as locations (with CalyxOS you can use [Strict Location Redaction](https://calyxos.org/docs/guide/security/location/#strict-location-redaction) to minimize location data sharing across apps), accounts, and payment information, and remove apps you no longer need or use.

#### Next steps
Individual users should update to the latest CalyxOS release (6.6.22, 6.6.23 or newer) to protect themselves against this vulnerability. The CalyxOS team will continue monitor the issue on AOSP as it remains undisclosed and unresolved by the Google team.

#### GitLab Issue link
<https://gitlab.com/CalyxOS/calyxos/-/issues/2848>

