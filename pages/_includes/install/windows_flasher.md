### Download device-flasher

<a class="btn" href="(https://release.calyxinstitute.org/device-flasher/1.0.3/device-flasher.exe">Download device-flasher.exe</a>

Save this executable to a new directory, where you will also later save the CalyxOS image.

#### Verify Digest

This is an optional step, useful for ensuring you have the correct device-flasher executable. Open a terminal on your host computer, change to the directory where you saved device-flasher, and then run:

```
CertUtil -hashfile device-flasher.exe SHA256
```

And ensure the result says `0cdaf47f1c97e43c70e0fe7cfff63fcaa140799ccc494bebf6451e96cbcdda6c`. This is the unique digest of the device-flasher. If it doesn't match, then you have a corrupted or incorrect file.
