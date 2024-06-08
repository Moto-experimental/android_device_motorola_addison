#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Platform
TARGET_BOARD_PLATFORM := msm8953

# Inherit from msm8937-common
$(call inherit-product, device/motorola/msm8937-common/msm8937.mk)

# Include Proprietary Components
$(call inherit-product, vendor/motorola/addison/addison-vendor.mk)

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8953_mot_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8953_mot_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_ov5695_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx362_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_imx362_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov5693_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/ov5693_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov16860_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/ov16860_chromatix.xml \


# Fingerprint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/fpc1020.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/fpc1020.idc

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/fpc1020.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/fpc1020.kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Modservice
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/whitelist_modservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/whitelist_modservice.xml

# Motorola Health
PRODUCT_PACKAGES += \
    motorola.hardware.health@1.0.vendor

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    SecureElement \
    Tag \
    android.hardware.nfc@1.1-service \
    com.android.nfc_extras

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp_retcn.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp_retcn.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml

# PocketMode
PRODUCT_PACKAGES += \
    MotoPocketMode

# Properties
include device/motorola/addison/vendor_prop.mk

# Ramdisk
PRODUCT_PACKAGES += \
    init.addison.rc

PRODUCT_PACKAGES += \
    init.gbmods.sh \
    init.qcom.sensors.sh \
    wlan_carrier_bin.sh

# Sensors
PRODUCT_PACKAGES += \
    libsensorhub \
    motosh \
    sensorhub.msm8953 \
    sensors.msm8953 \
    libsensorndkbridge

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:vendor/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:vendor/etc/sensors/sensor_def_qcomdev.conf

# Shims
PRODUCT_PACKAGES += \
    libjustshoot_shim

# Soong
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-addison.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.addison

