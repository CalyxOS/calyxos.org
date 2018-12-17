What to use for automating builds, signing (potentially offline, see below), and the entire release process.

## Building
Fetch the latest stable source, build for all supported devices and also generate the files needed by the signing process.

Outputs target-files.zip and otatools.zip

Can also generate a changelog (something like `repo forall -c git log $oldtag..$newtag` or so on)

## Signing
Use the signing scripts to sign the builds with our private keys.

Outputs OTA updates, factory images, and the update metadata

Should be offline later, in which case this should be a simple script which can be executed by the automation server, so for the offline process the same script can be executed manually.

## Release - TBD
Collect signed files, (update website?), post changelog, and put builds on the server.