Signing the generated files on a different, offline machine and creating ota updates (standalone as well as incremental) and factory images.

Script:
https://gitlab.com/calyxos/vendor_calyx/blob/pie-qpr1-s2-release/scripts/release.sh

Requirements:
* target-files.zip (`make target-files-package`)
* otatools.zip (`make otatools-package`)
* Signing keys (obviously)

## OLD ##

Writing down the process manually right now, to be scripted once it's working! (Edit: It's done :D)

Repos needed:
* build
* development
* external/avb
* system/extras

Tools needed:
* signapk.jar
* dumpkey.jar
* mkbootfs
* minigzip
* mkbootimg
* Many more, alongwith their dependencies

Notes:
* Use the "-v" flag for verbosity, helps.
* Copied the above tools (and their dependencies) from out/host/linux-x86 (bin/framework/lib) as needed from a machine with an existing build to a machine without the android source code.

References:
* https://source.android.com/devices/tech/ota/sign_builds