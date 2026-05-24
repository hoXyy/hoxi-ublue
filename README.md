# hoxi-ublue

My custom Fedora Silverblue image, built with [BlueBuild](https://blue-build.org/).

## Features

- TODO: write this

## Installation

I recommend installing [Fedora Silverblue](https://fedoraproject.org/atomic-desktops/silverblue/) _(latest should work, this image should be based on the latest version of Fedora anyways - Fedora 44 at the time of writing)_ first, then rebasing to this image using this command:

  ```
  sudo bootc switch ghcr.io/hoxyy/hoxi-os:latest
  ```

Then reboot.

## ISO

There's no ISOs publically available since they're big and having somewhere to store them is a pain. If you know me and know how to contact me in a way that I'll read, I may build an ISO for you.

Another way is just following BlueBuild's instructions for generating an ISO [here](https://blue-build.org/how-to/generate-iso/). Requires installing their CLI.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/hoxyy/hoxi-os
```
