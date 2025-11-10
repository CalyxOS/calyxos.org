---
title: CalyxOS progress report: signing, team capacity, and more
date: 2025-11-10
---

- CalyxOS is working seamlessly with our security consultants to finalize the HSM signing solution.
- The Calyx engineering is fixing our data infrastructure.
- Three new roles are open for CalyxOS. 

As [promised](https://calyxos.org/news/2025/09/30/how-to-reach-the-calyxos-team/), today the CalyxOS team is sharing an update on our progress to improve the project and increase transparency. 

Throughout the past few weeks, the team has been focusing on improving the security of our critical infrastructure and tackling long lasting challenges. In addition, we are revising our communication strategy toward a combination between providing thorough updates and building capacity for direct engagement in our community channels. Understandably, the decrease of the team voice and public actions have raised questions and concerns around the capacity of the project. We would like to respond to concerns people have raised by confirming that CalyxOS hasn't been compromised and the organization is directing significant resources to get it back on track. We deeply appreciate all the people who have been sharing their concerns with us. And we will try our best to address their questions in this report. 

## Redesigning the CalyxOS signing process

We are finalizing the design of a Hardware Security Module (HSM) signing solution for CalyxOS. A HSM is a dedicated physical hardware device that generates and stores cryptographic keys in a tamper-resistant environment; the keys never leave the HSM, which puts a guardrail against key extraction and compromise. We decided to move to a HSM because signing keys are a critical part of the chain of trust: they are what verifies to your device that an update actually comes from CalyxOS and hasn't been tampered with. 

Our criteria for the CalyxOS signing solution were that it should be: **available**, **affordable**, **secure**, **expandable**, **auditable**, **redundant**, **easy to access**, and **aligned to the mission of the Calyx Institute**. These requirements were what led us to choose the HSM solution among available options. Specifically, we selected the YubiHSM2 based on our current urgent development requirements and resources as an interim solution while we evaluate and build out a long-term solution. To keep our solutions consistent with a seamless transition in the future, we are ensuring that our keys are transferable both operationally and technically, and that CalyxOS users will not need to reflash their devices beyond the initial installation.

Our work has also included integrating AOSP's documented [signing process](https://source.android.com/docs/core/ota/sign_builds) with PKCS #11, the public-key cryptography standard for communicating with HSMs and cryptographic devices. To make that happen, we are building an interface layer between the two that does not yet exist in the standard AOSP tools or within the FOSS community. 

Right now, we are finalizing the detailed provisioning plan for the signing process under the guidance and testing from our independent, third-party security consultants.

Once the new signing infrastructure and procedure is in place, documentation and code will be shared as a FOSS project as part of our commitment to open source, transparency, and community collaboration. 

## Adapting to the new norm of AOSP releases

Google has made serious changes to AOSP development in the last few months; monthly security patches are often empty and public git tags for developers, which make it easy to identify patches, are no longer available. As the changes unfold gradually, the challenge of keeping a regular and timely development cycle with all these AOSP changes remains significant as the custom ROM community has spoken about extensively.

Despite these challenges, we have made the decision to — in our best effort — further extend our device support for moto g32, g42, g52, Pixel 5, 4a 5G, and Pixel 5a 5G when CalyxOS resumes update releases. That means people with these devices can install the Android 16 version of CalyxOS when it becomes available. We are still gauging whether we can ship QPR1 to these extended release devices, pending the release of the QPR1 source; QPR2 is even less certain as we assess the work involved. Once we have builds ready with a thorough evaluation of the case, we will publish a confirmed new EOL date for devices for which we provide extended support.

In the interim, we have also reached out to our peer custom ROM developers and several device manufacturers to align strategies to sustainably access and publish OS security patches. We hope that this collective effort of the global FOSS community will stop the trend of closing source for AOSP and other open-source projects.

## Building capacity for the CalyxOS team 

In reality, Calyx has been a small team running a lot of projects, not least of all CalyxOS. We are stretched thin right now and our priority has been getting CalyxOS back up and running ASAP. As we are drafting this report, we are also working diligently to expand development capacity and optimize team structure. We have brought Lucas—a long-time CalyxOS community facilitator—to the team as our new Calyx Community Coordinator, a role that has never existed in the organization before. In addition, we are in active recruitment for the [CalyxOS Android Board Support Packages (BSP) Engineer](https://job-boards.greenhouse.io/calyxinstitute/jobs/4934856007) position and a new Android Platform Software Developer. Keep an eye on our [job board] (https://job-boards.greenhouse.io/calyxinstitute) and please help spread the word!