# Copyright (C) 2012 The CyanCom Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

## Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

## Video
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libmm-omxcore \
    libstagefrighthw
    
## Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7x30 \
    copybit.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libc2dcolorconvert

## Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    audio.a2dp.default \
    libaudioutils

## Lights
PRODUCT_PACKAGES += \
    lights.msm7x30

## GPS
PRODUCT_PACKAGES += \
    gps.msm7x30

## Other
PRODUCT_PACKAGES += \
    dexpreopt

## Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs
    
## Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

## we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

## Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    ro.use_data_netmgrd=true \
    ro.config.ehrpd=true \
    ro.ril.shutdown=true \
    ro.multi.rild=false

## Camera
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camera.landscape=true \
    debug.camcorder.disablemeta=0

## USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage,adb \
    ro.additionalmounts=/storage/sdcard0 \
    ro.vold.switchablepair=/storage/sdcard1,/storage/sdcard0 \
    ro.emmc.sdcard.partition=14 \
    ro.vold.umsdirtyratio=50 \
    ro.emmc=1

## system prop for opengles version
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.fakevsync=1 \
    debug.composition.type=gpu \
    ro.opengles.version=131072 \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    com.qc.hardware=true \
    DEVICE_PROVISIONED=1 \
    ro.sf.lcd_density=240

## Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=15
    
## Bluetooth
PRODUCT_PACKAGES += \
    brcm_patchram_plus

## These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

## Ramdisk Init
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/huawei/msm7x30-common/ramdisk,root)

## ETC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml
    
## BLUETOOTH
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/prebuilt/etc/bluetooth/BCM4329.hcd:system/vendor/firmware/BCM4329.hcd
    
## WIFI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/wifi/nvram.txt:system/vendor/firmware/nvram.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcm4329_abg.bin:system/vendor/firmware/fw_bcm4329_abg.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin

## Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/cyttsp_7630_fluid.hex:system/etc/firmware/cyttsp_7630_fluid.hex

## KEY
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keychars/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/idc/atmel-rmi-touchscreen.idc:system/usr/idc/atmel-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc

## Video and Omx
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxVenc.so:system/lib/libOmxVenc.so \
    $(LOCAL_PATH)/prebuilt/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)

## Enable USB mass storage (and adb) at boot.
ADDITIONAL_DEFAULT_PROPERTIES := \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1 \
    ro.secure=0 \
    ro.adb.secure=0

## Dalvik Heap
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
