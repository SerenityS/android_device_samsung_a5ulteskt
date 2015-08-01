#
# Copyright (C) 2015 The CyanogenMod Project
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

-include device/samsung/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a5ulteskt

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_a5u_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_USES_LEGACY_MMAP := true
TARGET_USE_VENDOR_CAMERA_EXT := true

# CMHW
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw/src

# CPU
TARGET_CPU_CORTEX_A53 := true

# GPS
TARGET_GPS_HAL_PATH := $(DEVICE_PATH)/gps
TARGET_NO_RPC := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2516582400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12608057344
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SEPOLICY_DIRS += \
    device/samsung/a5ulteskt/sepolicy

BOARD_SEPOLICY_UNION += \
    file.te \
    system_server.te \
    file_contexts


TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/yu/lettuce/BoardConfigVendor.mk
