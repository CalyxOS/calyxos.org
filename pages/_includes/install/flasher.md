{% assign df = site.data.device-flasher[include.os] -%}

### Download device-flasher

<a class="btn" href="{{df.url}}">Download {{df.filename}}</a>

Save this executable to a new directory, where you will also later save the CalyxOS image.

#### Verify Digest

This is an optional step, useful for ensuring you have the correct device-flasher executable. Open a terminal on your host computer, change to the directory where you saved device-flasher, and then run:

```
{{df.digest_command}}
```

And ensure the result says `{{df.sha256}}`. This is the unique digest of the device-flasher. If it doesn't match, then you have a corrupted or incorrect file.

#### Verify Signature

For the highest level of confidence, you can optionally <a href="{{df.url}}.minisig">download the signature file</a> and then [[verify it => verify]].
