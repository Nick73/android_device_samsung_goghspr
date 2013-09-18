#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product-if-exists, vendor/samsung/gogh/gogh-vendor.mk)
VARIENT_MODEL := goghspr
#VARIENT_REQUIRE_3.0_KERNEL := true
## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/goghspr/overlay

## common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/gogh-common/overlay-gsm
# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# media configuration
PRODUCT_COPY_FILES += \
    device/samsung/goghspr/configs/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/gogh-common/camera/media_profiles.xml:system/etc/media_profiles.xml


PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=none \
    persist.audio.handset.mic=analog \
    ro.qc.sdk.audio.fluencetype=none

#scripts
PRODUCT_PACKAGES += \
    50bluetooth \
    60sensors \
    wifimac.sh \
    camera.MSM8960

# Wifi firmware
PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin_

# Inherit from gogh-common
$(call inherit-product, device/samsung/gogh-common/gogh-common.mk)
