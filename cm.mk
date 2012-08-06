## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := APOLLO

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/apollo/apollo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := apollo
PRODUCT_NAME := cm_apollo
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I5801

#Set build fingerprint / ID / Product Name ect.
#Don't change this. This is Google Play App Compactablity fix
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I5800 BUILD_FINGERPRINT="samsung/GT-I5800/GT-I5800/GT-I5800:2.2/FROYO/BAJP6:user/release-keys" PRIVATE_BUILD_DESC="GT-I5800-user 2.2 FROYO BAJP6 release-keys"
