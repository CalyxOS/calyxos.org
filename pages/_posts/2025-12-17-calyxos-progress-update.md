---
title: CalyxOS progress report - ceremony preparation, QPR ports, and FOSDEM 
date: 2025-12-17
---

- Our final open HSM-based key provisioning plan is undergoing auditing before the key ceremony
- CalyxOS devices, including extended support, are being ported to Android 16 QPR1 while QPR2 support plan is being developed
- We are improving community support with the new Community Coordinator 
- Catch up with us at FOSDEM in Brussels on January 31 2026!

Following [last month's update](https://calyxos.org/news/2025/11/10/calyxos-progress/), the CalyxOS team is entering the final stage for the new signing plan and policy. In addition, we are working on bringing CalyxOS supported devices up to Android 16 QPR2 and building the team capacity with new hires. Here is a detailed rundown of our work:

### Signing finalization and audit

Our team has reached a final draft for the new HSM-based signing process. This includes a detailed plan for the initial key ceremony, provisioning scripts, and the verification methodology of each element in the process. Based on the [criteria we laid out before](https://calyxos.org/news/2025/11/10/calyxos-progress/) and our requirements for signing CalyxOS builds and apps at the frequency of every one to three months, our goal for this new signing design is ensure that all key material will have a secure backup so that no single person can hold access to our signing keys. The main key we will be generating during a provisioning ceremony will be split into shards using Shamir's Secret Sharing. Each shard is only ever stored encrypted and kept safe by a designated team member. Together with security auditors we selected a [library](https://github.com/hashicorp/vault/tree/main/shamir) for this job and wrote our own simple Go executable with it, which could create reproducible builds and was already audited.

All the provisioning tools, key ceremony operational plan, and auditing mechanism are being packaged for a final security audit.

Once this package for key signing provisioning passes the audit from our security consultant, we will perform the key ceremony and deploy the new signing mechanism for CalyxOS. We anticipate this to happen in the next few weeks and will keep you updated on audit progress.

### Android 16 QPR1 and QPR2

We are pleased to share that we have booted Android 16 QPR1 on all modern devices on [our supported device list](https://calyxos.org/docs/guide/device-support/) and are testing full CalyxOS functionality while also porting it to the rest of the our supported devices. What's more, we have started analysis of the [newly published QPR2](https://android-developers.googleblog.com/2025/12/android-16-qpr2-is-released.html) and are building out our QPR2 sync plan and timeline for all supported devices. 

In the meantime, we are setting out to migrate our CalyxOS Gerrit Code Review instance to a new and faster server as part of the Calyx Institute's data infrastructure overhaul. The success of the Gerrit migration will stabilize and facilitate our QPR2 bringup.

### Building capacity for the CalyxOS team, continued

Last month, Lucas, a long-time CalyxOS contributor, joined the team as the Community Coordinator. You might have been familiar with Lucas on our various community channels, including Matrix room and CalyxOS subreddit. We will keep improving our community communications with the tremendous help from Lucas. To start, we will try to make sure we respond to all questions and concerns. If you have any comments or suggestions, please do not hesitate to ping us on our channels. 

The position of CalyxOS Android Board Support Packages (BSP) Engineer has been closed and we have entered the interview stage. We will soon have a few more openings on our [job board](https://job-boards.greenhouse.io/calyxinstitute). Stay tuned!

### Meet the CalyxOS team at FOSDEM 2026

If you plan to attend [FOSDEM 2026](https://fosdem.org/2026/) and are interested in knowing more about our effort in HSM signing upgrade, we will present our methodologies and lessons at the [FOSS on Mobile devroom](https://fosdem.org/2026/schedule/track/foss-on-mobile/). Looking forward to seeing you there!