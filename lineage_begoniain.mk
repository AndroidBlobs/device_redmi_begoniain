# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from begoniain device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := redmi
PRODUCT_DEVICE := begoniain
PRODUCT_MANUFACTURER := redmi
PRODUCT_NAME := lineage_begoniain
PRODUCT_MODEL := Redmi Note 8 Pro

PRODUCT_GMS_CLIENTID_BASE := android-redmi
TARGET_VENDOR := redmi
TARGET_VENDOR_PRODUCT_NAME := begoniain
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="begoniain-user 9 PPR1.180610.011 V11.0.1.0.PGGINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/begoniain/begoniain:9/PPR1.180610.011/V11.0.1.0.PGGINXM:user/release-keys
