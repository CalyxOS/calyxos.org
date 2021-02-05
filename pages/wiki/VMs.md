---
title: VMs
---
# No longer current

A document listing the various machines used for CalyxOS development and release process

## CalyxOS Infra
#### calyxos-build-nyc
Capable of building Android in a reasonable time.
Used by cdesai for testing things.

### Future VMs
TODO: Add more details for this
#### signing-vm
A machine that would have a setup matching the offline signing machine. (Matching setup = number of cores/RAM/OS etc.)

Can be used to sign the current builds, but has to be fully scripted, no manual commands.

#### build-vm
A VM dedicated to building, will not be used for anything else. Unsure if this is needed right now, can just use build-nyc for this.

Whenever this is setup though, it should be completely automated and no builds should have to be fired off manually.