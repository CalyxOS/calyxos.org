### Download device-flasher

<a class="btn" href="(https://release.calyxinstitute.org/device-flasher/1.0.3/device-flasher.darwin">Download device-flasher.darwin</a>

Save this executable to a new directory, where you will also later save the CalyxOS image.

#### Verify Digest

This is an optional step, useful for ensuring you have the correct device-flasher executable. Open a terminal on your host computer, change to the directory where you saved device-flasher, and then run:

```
shasum -a 256 device-flasher.darwin
```

And ensure the result says `5e5542f51c1592e392114636f2e64fe9dae1cacaaf55c722822780ec5cbf9331`. This is the unique digest of the device-flasher. If it doesn't match, then you have a corrupted or incorrect file.
