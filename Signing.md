Signing the generated files on a different, offline machine and creating ota updates (standalone as well as incremental) and factory images.

Writing down the process manually right now, to be scripted once it's working!

Repos needed:
* development (only to make the key, most likely not needed to sign)
* build

Tools needed:
* signapk.jar
* dumpkey.jar
* mkbootfs
* minigzip
* mkbootimg
* 

Notes:
* Use the "-v" flag for verbosity, helps.
* Copied the above tools from out/host/linux-x86 (bin/framework/lib) as needed from a machine with an existing build to a machine without the android source code.

References:
* https://source.android.com/devices/tech/ota/sign_builds