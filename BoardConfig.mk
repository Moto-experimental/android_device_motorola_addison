#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2022 The LineageOS Project
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
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/addison

# Asserts
TARGET_OTA_ASSERT_DEVICE := addison,addison_retail

# Camera
MALLOC_SVELTE_FOR_LIBC32 := true

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Include
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := addison_defconfig
TARGET_KERNEL_RECOVERY_CONFIG := recovery_addison_defconfig

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616    #    16484 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296    #  4194304 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25614597632 # 25014255 * 1024 mmcblk0p54
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432     #    32768 * 1024 mmcblk0p30
BOARD_VENDORIMAGE_PARTITION_SIZE := 805306368

# Power
TARGET_HAS_NO_WLAN_STATS := true
BOARD_POWER_CUSTOM_BOARD_LIB := libpower_8953

# Root
BOARD_ROOT_EXTRA_FOLDERS := persist
BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist

# SELinux
#BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy-mods/vendor
#SYSTEM_EXT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy-mods/private
#SYSTEM_EXT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy-mods/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Sensors
BOARD_USES_MOT_SENSOR_HUB := true
MOT_AP_SENSOR_HW_REARPROX := true
MOT_SENSOR_HUB_FEATURE_CAMFSYNC := true
MOT_SENSOR_HUB_FEATURE_CHOPCHOP := true
MOT_SENSOR_HUB_FEATURE_GR := true
MOT_SENSOR_HUB_FEATURE_LA := true
MOT_SENSOR_HUB_FEATURE_LIFT := true
MOT_SENSOR_HUB_FEATURE_PEDO := true
MOT_SENSOR_HUB_FEATURE_ULTRASOUND := true
MOT_SENSOR_HUB_HW_BMI160 := true
MOT_SENSOR_HUB_HW_TYPE_L4 := true

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Vendor SPL
VENDOR_SECURITY_PATCH := 2020-10-17

# Inherit from the proprietary version
include vendor/motorola/addison/BoardConfigVendor.mk
