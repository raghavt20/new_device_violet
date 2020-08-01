# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from violet device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := violet
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_violet
PRODUCT_MODEL := Redmi Note 7 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := violet
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="violet-user 10 QKQ1.190915.002 V12.0.0.2.QFHINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/violet/violet:10/QKQ1.190915.002/V12.0.0.2.QFHINXM:user/release-keys
