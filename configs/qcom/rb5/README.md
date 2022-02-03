# Qualcomm Robotics RB5

This configuration package `qcom/rb5` compiles a Skiff base operating system for
the RB5 / QRB5165 platform. Most other distributions are available as core
configurations.

## Getting Started

Set the comma-separated `SKIFF_CONFIG` variable:

```sh
$ export SKIFF_CONFIG=qcom/rb5,skiff/core
$ make configure                   # configure the system
$ make compile                     # build the system
```

The `skiff/core` portion of SKIFF_CONFIG enables "Skiff Core" with Ubuntu.

Once the build is complete, we will flash to a MicroSD card to boot. You will
need to `sudo bash` for this on most systems.

```sh
$ sudo bash             # switch to root
$ export QCOM_SD=/dev/sdz # make sure this is right! (usually sdb)
$ make cmd/qcom/common/format  # tell skiff to format the device
$ make cmd/qcom/common/install # tell skiff to install the os
```

You only need to run the `format` step once. It will create the partition table
and flash u-boot to the beginning of the drive. The `install` step will
overwrite the current Skiff installation on the card, taking care to not touch
any persistent data (from the persist partition). It's safe to upgrade Skiff
independently from your containerized environments.

Note: if Docker is upgraded between Skiff versions, we can't vouch for Docker
not breaking backwards compatibility at that time, however; this change would
usually only happen between major Skiff/Buildroot releases if so.

## Reference

Docs used to build the config:

 - [rb5 bootloader](https://github.com/mrchapp/ci-job-configs/blob/master/lt-qcom-bootloader-rb5.yaml)


