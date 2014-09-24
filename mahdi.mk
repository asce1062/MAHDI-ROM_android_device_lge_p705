# Inherit some common mahdi stuff.
#$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p705/device.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusL7

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p705
PRODUCT_NAME := mahdi_p705
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P705
PRODUCT_MANUFACTURER := LGE

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=144808 \
    PRODUCT_NAME=p705 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="p705-user 4.4.4 KTU84Q 144808 release-keys" \
    BUILD_FINGERPRINT="lge/p705/4.4.4/KTU84Q/144808:user/release-keys"

# Enable Torch
PRODUCT_PACKAGES += \
    Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/bootanimations/BOOTANIMATION-800x480.zip:system/media/bootanimation.zip
