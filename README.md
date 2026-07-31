# bazzite-dx-codium &nbsp; [![bluebuild build badge](https://github.com/imartyn/bazzite-dx-codium/actions/workflows/build.yml/badge.svg)](https://github.com/imartyn/bazzite-dx-codium/actions/workflows/build.yml)

This is a bazzite-dx spin with the Microsoft VSCode removed, and VSCodium added.

There's also a version you probably don't want to use with the GLPI agent installed which is for enterprise stuff.  I need to install that on my work machine so it exists as well.

If you'd like to do something similar, see the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Installation

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/imartyn/bazzite-dx-codium:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/imartyn/bazzite-dx-codium:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag tracks the latest build of bazzite-dx.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/how-to/generate-iso/#_top). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/imartyn/bazzite-dx-codium
```
