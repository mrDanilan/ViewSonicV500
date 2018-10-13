#
# Copyright (C) 2015 The Android Open-Source Project
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


# Выключаем ниндзю
USE_NINJA := false

# Архитектура
TARGET_BOARD_PLATFORM := msm8926
TARGET_ARCH := arm 
TARGET_ARCH_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
# 
BOARD_EGL_CFG := device/huawei/vsvpitsot/egl.cfg
#
TARGET_KERNEL_SOURCE := kernel/huawei/vsvpitsot
TARGET_KERNEL_CONFIG := vsvpitsot_defconfig

# Дописать правильные значения (Это angler)
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
# Заполнил из стока
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true
TARGET_BOARD_INFO_FILE := device/huawei/vsvpitsot/board-info.txt
#
# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
#TARGET_USES_C2D_COMPOSITION := true
# Enable auto suspend in poweroff charging to save power
BOARD_CHARGER_ENABLE_SUSPEND := true


# Названия блоков
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p18
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p16
BOARD_DATA_DEVICE := /dev/block/mmcblk0p26

# Размер разделов
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 132120576
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 824705024
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13958643712
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USES_AOSP := true
TARGET_USES_INTERACTION_BOOST := true

BOARD_QTI_CAMERA_32BIT_ONLY := true

#GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

#NFC
NXP_CHIP_TYPE := 2

# Testing related defines
BOARD_PERFSETUP_SCRIPT := platform_testing/scripts/perf-setup/angler-setup.sh

USE_CLANG_PLATFORM_BUILD := true

#Сказали добавить тулчейн???
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

