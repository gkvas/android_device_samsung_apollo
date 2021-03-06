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

# Board
TARGET_BOARD_PLATFORM := s5p6442
TARGET_CPU_ABI := armeabi-v6
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s

# Kernel
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := codesourcery
#TARGET_PROVIDES_INIT := true
#TARGET_PROVIDES_INIT_TARGET_RC := true
#TARGET_KERNEL_SOURCE := kernel/samsung/apollo
#TARGET_KERNEL_CONFIG := cyanogenmod_apollo_defconfig
#BOARD_CUSTOM_BOOTIMG_MK := device/samsung/apollo/shbootimg.mk
TARGET_PREBUILT_KERNEL := device/samsung/apollo/prebuilt/kernel
TARGET_RECOVERY_INITRC := device/samsung/apollo/recovery.rc

# Graphics
# EGL Graphics Modifications
# Available Flags:
# DMISSING_EGL_EXTERNAL_IMAGE
# DMISSING_EGL_PIXEL_FORMAT_YV12
# DMISSING_GRALLOC_BUFFERS
#BOARD_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS
#EGL_FORCE_CONFIG=0xc
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_RGBA_8888 -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=87
BOARD_EGL_CFG := device/samsung/apollo/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := false
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Audio
BOARD_USES_GENERIC_AUDIO := false

# Sensors
BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libsecgps libsecril-client
TARGET_BOOTLOADER_BOARD_NAME := s5p6442

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcamera
BOARD_CAMERA_DEVICE := /dev/video0

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FORCE_STATIC_A2DP := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# Mobile data
BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4329_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4329_aps.bin"
WIFI_DRIVER_MODULE_PATH     := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"

# USB
RNDIS_DEVICE := "/sys/devices/virtual/sec/switch/tethering"
BOARD_CUSTOM_USB_CONTROLLER := ../../device/samsung/apollo/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/s3c-usbgadget/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/s3c-usbgadget/gadget/lun0/file"

# Misc
WITH_DEXPREOPT := false
WITH_JIT := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_USES_LIBSECRIL_STUB := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/apollo/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/apollo/recovery/graphics.c
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_LDPI_RECOVERY := true
DEVICE_RESOLUTION := 240x400

# NAND
#TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_BOOTIMAGE_PARTITION_SIZE := 7864320
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 230686720
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 212336640
#BOARD_FLASH_BLOCK_SIZE := 4096

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/apollo/releasetools/apollo_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/apollo/releasetools/apollo_img_from_target_files
TARGET_OTA_ASSERT_DEVICE := apollo,GT-I5800,GT-I5801
