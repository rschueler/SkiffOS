################################################################################
#
# rb5-firmware
#
################################################################################

RB5_FIRMWARE_VERSION = 20210901-v6
RB5_FIRMWARE_SOURCE = RB5_firmware_$(RB5_FIRMWARE_VERSION).zip
RB5_FIRMWARE_SITE = http://releases.linaro.org/96boards/rb5/qualcomm/firmware

RB5_FIRMWARE_LICENSE = Proprietary (firmware blobs)
RB5_FIRMWARE_ALL_LICENSE_FILES += LICENSE.qcom.txt

# TODO

$(eval $(generic-package))
