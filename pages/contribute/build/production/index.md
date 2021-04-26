---
title: CalyxOS Production builds
nav_title: Production
---

The official CalyxOS releases are built on our official build server running Debian Stable (buster/10 at time of writing)

They're `user` builds, and we build `target-files-package otatools-package`, and then copy those zips to a dedicated offline signing machine to sign and release.