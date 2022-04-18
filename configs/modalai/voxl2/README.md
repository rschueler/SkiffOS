# ModalAI Voxl2

This configuration package series configures Buildroot to produce a BSP image for the
[ModalAI Voxl2].

[ModalAI Voxl2]: https://docs.modalai.com/voxl-2/

References:

 - https://gitlab.com/voxl-public/system-image-build/meta-voxl2/-/tree/voxl2-14.1a
 - https://gitlab.com/voxl-public/system-image-build/voxl-build
 - https://gitlab.com/voxl-public/system-image-build/qrb5165-kernel
 
## Getting Started

Set the comma-separated `SKIFF_CONFIG` variable:

```sh
$ export SKIFF_CONFIG=modalai/voxl2,skiff/core
$ make configure                   # configure the system
$ make compile                     # build the system
```

Once the build is complete, we will use Fastboot to flash the system to a
device. Note that this will overwrite the existing system contents including the
persist partition, see "OTA Update" below for updating existing systems.

```sh
$ make cmd/modalai/voxl/flash  # tell skiff to use fastboot to flash
```

This will flash the device & boot it w/ fastboot.

### OTA Update

To over-the-air update an existing system, use the push_image script:

```sh
$ ./scripts/push_image.bash root@my-ip-address
```

The SkiffOS upgrade (or downgrade) will take effect on next reboot.
