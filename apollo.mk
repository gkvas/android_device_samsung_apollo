# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for apollo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and apollo, hence its name.
#
DEVICE_PACKAGE_OVERLAYS := device/samsung/apollo/overlay

# MDPI assets
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.primary.s5p6442 \
	audio_policy.s5p6442

# Video
PRODUCT_PACKAGES += \
	gralloc.s5p6442 \
	libGLES_fimg \
	libstagefrighthw \
	hwcomposer.s5p6442
	
# Camera
PRODUCT_PACKAGES += \
	camera.s5p6442

# Filesystem management tools
PRODUCT_PACKAGES := \
	make_ext4fs

# Hardware OMX Codecs
PRODUCT_PACKAGES += \
	libSEC_OMX_Core \
	libOMX.SEC.AVC.Decoder \
	libOMX.SEC.M4V.Decoder \
	libOMX.SEC.M4V.Encoder \
	libOMX.SEC.AVC.Encoder

# Usb accessory
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Bluetooth
PRODUCT_PACKAGES += \
    brcm_patchram_plus \
    bdaddr_read
    
# Sensors
PRODUCT_PACKAGES += \
    sensors.s5p6442

# GPS
PRODUCT_PACKAGES += \
    gps.s5p6442
    
# Lights
PRODUCT_PACKAGES += \
    lights.s5p6442

# Super User
PRODUCT_PACKAGES += \
	Superuser

# Misc Packages
PRODUCT_PACKAGES += \
	SamsungServiceMode \
	bmlunlock
	
# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Kernel Init files
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/kernel:kernel \
	device/samsung/apollo/init.apollo.usb.rc:root/init.apollo.usb.rc \
	device/samsung/apollo/init.rc:root/init.rc \
	device/samsung/apollo/init.apollo.rc:root/init.apollo.rc \
	device/samsung/apollo/ueventd.rc:root/ueventd.rc \
	device/samsung/apollo/recovery.fstab:recovery/root/etc/recovery.fstab

## ril
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/bin/rild:system/bin/rild \
	device/samsung/apollo/prebuilt/lib/libril.so:obj/lib/libril.so \
	device/samsung/apollo/prebuilt/lib/libril.so:system/lib/libril.so \
    device/samsung/apollo/prebuilt/lib/libsec-ril.so:system/lib/libsec-ril.so \
    device/samsung/apollo/prebuilt/lib/libsecril-client.so:system/lib/libsecril-client.so

## APNS
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

## Audio
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

# Video
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/lib/egl/libEGL_fimg.so:system/lib/egl/libEGL_fimg.so \
	device/samsung/apollo/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	device/samsung/apollo/prebuilt/lib/egl/libGLESv1_CM_fimg.so:system/lib/egl/libGLESv1_CM_fimg.so \
	device/samsung/apollo/prebuilt/lib/egl/libGLESv2_fimg.so:system/lib/egl/libGLESv2_fimg.so

# Camera
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
	device/samsung/apollo/prebuilt/lib/libcamera.so:system/lib/libcamera.so \
	device/samsung/apollo/prebuilt/lib/libcamera_client.so:system/lib/libcamera_client.so \
	device/samsung/apollo/prebuilt/lib/libsecjpeg.so:system/lib/libsecjpeg.so \
	device/samsung/apollo/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Wifi
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
	device/samsung/apollo/prebuilt/etc/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
	device/samsung/apollo/prebuilt/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt
	
# These are the OpenMAX IL configuration files
#PRODUCT_COPY_FILES += \
	device/samsung/apollo/sec_mm/sec_omx/sec_omx_core/secomxregistry:system/etc/secomxregistry

# Bluetooth
PRODUCT_COPY_FILES += \
   	device/samsung/apollo/prebuilt/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
	system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf
	
# Gps
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/lib/libsecgps.so:system/lib/libsecgps.so
	
# Vold and Storage
PRODUCT_COPY_FILES += \
    device/samsung/apollo/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/apollo/prebuilt/usr/keylayout/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
    device/samsung/apollo/prebuilt/usr/keylayout/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
    device/samsung/apollo/prebuilt/usr/keylayout/sec_headset.kl:system/usr/keylayout/sec_headset.kl
    
# Keychars
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/samsung/apollo/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/samsung/apollo/prebuilt/usr/keychars/qt602240_ts_input.kcm.bin:system/usr/keychars/qt602240_ts_input.kcm.bin \
    device/samsung/apollo/prebuilt/usr/keychars/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
    device/samsung/apollo/prebuilt/usr/keychars/sec_jack.kcm.bin:system/usr/keychars/sec_jack.kcm.bin

# Idc
PRODUCT_COPY_FILES += \
    device/samsung/apollo/prebuilt/usr/idc/qt602240_ts_input.idc:system/usr/idc/qt602240_ts_input.idc

# Super User
PRODUCT_COPY_FILES += \
	device/samsung/apollo/prebuilt/xbin/su:system/xbin/su \

# radio
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.ril_class=SamsungRIL \
	phone.ril.classname = com.android.internal.telephony.SamsungRIL

# Display
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=120 \
    ro.opengles.version= 131072

# Network & Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
	wifi.interface=eth0 \
	wifi.supplicant_scan_interval=180
	
# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=48m \
    dalvik.vm.checkjni=false
    
# Root
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.root_access=3

# UMS
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MODEL := GT-I5801
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
