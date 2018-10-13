$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
# Как зовут чё собираем
PRODUCT_BRAND :=Android
PRODUCT_DEVICE :=vsvpitsot
PRODUCT_NAME :=aosp_vsvpitsot
PRODUCT_MODEL := AOSP on vsvpitsot
PRODUCT_MANUFACTURER := Huawei # Пусть будет хайвей
PRODUCT_RESTRICT_VENDOR_FILES := true
# Типо задали экран... в оригинале этого нет
PRODUCT_AAPT_CONFIG :=mdpi hdpi xhdpi xxhdpi 
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS :=phone
# копируем проприоритарщину со стока, спасибо 4pda ...
LOCAL_PATH := vendor/huawei/vsvpitsot/proprietary
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/system/*:system/*
# Отсюда пошли приводить дерево согласно структуре Angler
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
# fstab пока пропущу
# 
$(call inherit-product, device/huawei/vsvpitsot/device.mk)
#$(call inherit-product-if-exists, vendor/huawei/angler/device-vendor.mk)

PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_PACKAGES += \
    AOSPLinks


