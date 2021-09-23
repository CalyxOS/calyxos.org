### Download device-flasher

<a class="btn" href="https://release.calyxinstitute.org/device-flasher/1.0.3/device-flasher.linux">Download device-flasher.linux</a>

Save this executable to a new directory, where you will also later save the CalyxOS image.

#### Verify Digest

This is an optional step, useful for ensuring you have the correct device-flasher executable. Open a terminal on your host computer, change to the directory where you saved device-flasher, and then run:

```
sha256sum device-flasher.linux
```

And ensure the result says `f4e68992198868148ca2d4bd0fd40d0176da4058a188a3fdf80732d04a6c3543`. This is the unique digest of the device-flasher. If it doesn't match, then you have a corrupted or incorrect file.
