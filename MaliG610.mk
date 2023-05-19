ifeq ($(strip $(TARGET_BOARD_PLATFORM_GPU)), mali-G610)
# libs of libGLES_mali.so are installed in ./Android.mk
PRODUCT_PACKAGES += \
        libGLES_mali \
        vulkan.$(TARGET_BOARD_PLATFORM)

PRODUCT_COPY_FILES += \
	device/redroid/vendor/gpu/MaliG610/firmware/mali_csffw.bin:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/mali_csffw.bin
endif
