---
title: CalyxOS progress report - final steps to set CalyxOS back on track
date: 2026-02-24
---

- We have completed the setup of the new HSM-based signing process 
- Current work focuses on a new release server and Gerrit instance
- A new dedicated sysadmin has joined the team

Welcome to our first CalyxOS progress report of 2026. January was a busy month for the team: finalizing provisioning ceremony operations and scripts, establishing the new signing infrastructure with our newly onboarded CalyxOS sysadmin, and attending [FOSDEM2026](https://fosdem.org/2026/). We are grateful for the questions, concerns, and suggestions shared with us from our community, and sincerely apologize for any delayed response and update.

### CalyxOS' new HSM-based signing infrastructure

Throughout January, the CalyxOS team has been focusing on the implementation of the new signing infrastructure to facilitate and streamline our future development. With the completion of the provisioning ceremony, we are now equipped with the new signing toolkit built by us and [audited by Trail of Bits](https://github.com/trailofbits/publications?tab=readme-ov-file#cryptography-reviews). This new signing infrastructure achieved two major goals:
- It resolved the potential bottlenecks and security risks that come with relying on a single person, machine, or HSM to sign every release. 
- It reduced the chance of compromise of the signing keys by preventing exporting them in plaintext.

You can read our [deep dive into the whole process](https://calyxos.org/news/2026/02/10/calyxos-hsm-signing/) or watch [our talk at FOSDEM2026](https://fosdem.org/2026/schedule/event/AV8MA9-open-source-hsm-based-aosp-signing/).

### Setting up new release server and Gerrit Code Review

We are now at the final step to resume CalyxOS: stabilizing the release cycle for our 25+ supported devices with the upgraded development infrastructure. To give an example, our release server upgrade has been in the backlog for more than 18 months. After a thorough inspection over the past few months, we came to the conclusion that our Gerrit and release servers should be set up with easier, regular backups to protect the project from server-side incidents. We are now migrating the CalyxOS release server to the organization's Vultr instance along with the web server that is hosting the CalyxOS website. As a result, at the moment you might encounter downtime or missing objects if you are syncing CalyxOS sources. You can find more information about the organization's larger infrastructure revamp [here](https://calyx.org/news/2025/update-on-member-portal-and-data). 

### Dedicated, expanded Systems Administrator support

More good news: we are pleased to have Nat Meysenburg supporting the CalyxOS system admininstration work. Nat joined our team at the beginning of 2026 and has been playing an instrumental role in our infrastructure modernization from server management redesign to code documentation. With Nat as our new member, we are steadily rebuilding the team capacity with a much more refined workflow. 