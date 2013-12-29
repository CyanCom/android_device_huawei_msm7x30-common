# Copyright (C) 2013 The CyanCom Project
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
#

TARGET_SPECIFIC_HEADER_PATH := device/huawei/msm7x30-common/include

USE_CAMERA_STUB := false

## Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := scorpion
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true
TARGET_HAVE_TSLIB := true
BOARD_WANTS_EMMC_BOOT := true


## cflags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DUSE_LEGACY_SCREENSHOT
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

## QCOM Enhancements
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

## Dalvik
TARGET_ARCH_LOWMEM := true

## Scorpion Enhancements
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

## Misc
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

## Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true

## Graphics
TARGET_USES_ION := false
TARGET_NO_HW_VSYNC := true
TARGET_NO_HDMI := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
BOARD_EGL_CFG := device/huawei/msm7x30-common/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_QCOM_LEGACY_OMX := true

## Audio
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_TUNNEL_LPA_ENABLED := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true

## WebKit
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
WEBCORE_INPAGE_VIDEO := true

## Wlan
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_NAME := "bcm4329"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP  := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/vendor/firmware/nvram.txt"
BOARD_USE_HUAWEI_BCM_WIFI := true

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/huawei/msm7x30-common/bluetooth/vnd_msm7x30.txt

## GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_LIBRARIES := libloc_api

## Lights
TARGET_PROVIDES_LIBLIGHTS := true

## Kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

## Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/huawei/msm7x30-common

## File System
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 14

## Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_CHARGEMODE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
TARGET_RECOVERY_INITRC := device/huawei/msm7x30-common/recovery/recovery.rc
BOARD_RECOVERY_RMT_STORAGE := true

## Legacy Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true
