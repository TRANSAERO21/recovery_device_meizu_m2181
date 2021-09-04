$(call inherit-product, device/meizu/m2181/m2181.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_NAME := twrp_m2181
PRODUCT_BRAND := Meizu
PRODUCT_DEVICE := m2181
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := MEIZU 18

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="meizu18" \
    PRODUCT_NAME="meizu_18_CN" \
    PRIVATE_BUILD_DESC="meizu_18_CN-user 11 RKQ1.201105.002 1607588916 release-keys"

BUILD_FINGERPRINT := meizu/meizu_18_CN/meizu18:11/RKQ1.201105.002/1607588916:user/release-keys
