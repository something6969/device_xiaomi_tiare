# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from tiare device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := tiare
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_tiare
PRODUCT_MODEL := Redmi Go

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := tiare
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="tiare-userdebug 8.1.0 OPM1.171019.026 FACTORY test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/tiare/tiare:8.1.0/OPM1.171019.026/FACTORY:userdebug/test-keys
