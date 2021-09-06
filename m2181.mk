# Enable virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot
$(call inherit-product, build/make/target/product/gsi_keys.mk)

# Enable emulated storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Screen
TARGET_SCREEN_WIDTH  := 3200
TARGET_SCREEN_HEIGHT := 1440

# AB partitions
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Boot HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti.recovery \
    bootctrl.$(PRODUCT_PLATFORM).recovery

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl-default.recovery
