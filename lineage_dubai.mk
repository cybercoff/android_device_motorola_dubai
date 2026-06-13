#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some Microg stuff.
$(call inherit-product, vendor/partner_gms/products/gms_minimal.mk)

PRODUCT_NAME := lineage_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dubai_g-user 14 U1RDS34.80-40-5-6 ba4fd-68ef4 release-keys" \
    BuildFingerprint=motorola/dubai_g/dubai:14/U1RDS34.80-40-5-6/ba4fd-68ef4:user/release-keys \
    DeviceProduct=dubai_g


# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# no incluir face unlock
TARGET_FACE_UNLOCK_SUPPORTED := false

# descartar quick tap
TARGET_SUPPORTS_QUICK_TAP := false

# no usar webcam for camera (sec)
TARGET_BUILD_DEVICE_AS_WEBCAM := false

# ROM type
LUNARIS_BUILD_TYPE := UNOFFICIAL

# BCR - a tu criterio
WITH_BCR := false

# Highend device, vale la pena
TARGET_OPTIMIZED_DEXOPT := true

# Blur - a gusto, no afecta funcionalidad
TARGET_ENABLE_BLUR := true

# dubai tiene UDFPS (under-display fingerprint)
TARGET_CUSTOM_UDFPS := false

# SurfaceFlinger boost - compatible con Snapdragon, útil
SURFACE_FLINGER_BOOST := true

TARGET_BOOT_ANIMATION_RES := 1080

# Use aosp telephony
TARGET_SUPPORTS_GOOGLE_TELEPHONY := false

# X-Reality Engine display enhancement
USE_REALITY_ENGINE := true

TARGET_USE_WALLPAPERS := false
