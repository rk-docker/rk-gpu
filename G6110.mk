ifneq ($(strip $(TARGET_2ND_ARCH)), )
# etc
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/powervr.ini:$(TARGET_COPY_OUT_VENDOR)/etc/powervr.ini

# lib
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/lib/egl/egl.cfg:$(TARGET_COPY_OUT_VENDOR)/lib/egl/egl.cfg

BOARD_VENDOR_KERNEL_MODULES += \
	device/redroid/vendor/libG6110/G6110_64/lib/modules/pvrsrvkm.ko

# vendor/firmware
PRODUCT_COPY_FILES += \
   device/redroid/vendor/libG6110/G6110_64/vendor/firmware/rgx.fw.signed.5.9.1.46:$(TARGET_COPY_OUT_VENDOR)/firmware/rgx.fw.signed.5.9.1.46 \
   device/redroid/vendor/libG6110/G6110_64/vendor/firmware/rgx.fw.signed.5.9.1.46:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/rgx.fw.signed.5.9.1.46

# vendor/bin
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/vendor/bin/pvrsrvctl:$(TARGET_COPY_OUT_VENDOR)/bin/pvrsrvctl \
    device/redroid/vendor/libG6110/G6110_64/vendor/bin/pvrtld:$(TARGET_COPY_OUT_VENDOR)/bin/pvrtld

# Vulkan support, use swiftshader when supporting GMS.
ifneq ($(strip $(BUILD_WITH_GOOGLE_MARKET)), true)
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/hw/vulkan.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/vulkan.rk3368.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/hw/vulkan.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/vulkan.rk3368.so
endif
# vendor/lib
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/egl/libEGL_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libEGL_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/egl/libGLESv1_CM_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv1_CM_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/egl/libGLESv2_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv2_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/hw/gralloc.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/gralloc.rk3368.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/hw/memtrack.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/memtrack.rk3368.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libcreatesurface.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcreatesurface.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libglslcompiler.so:$(TARGET_COPY_OUT_VENDOR)/lib/libglslcompiler.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libIMGegl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libIMGegl.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libpvrANDROID_WSEGL.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpvrANDROID_WSEGL.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libPVRScopeServices.so:$(TARGET_COPY_OUT_VENDOR)/lib/libPVRScopeServices.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libsrv_um.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsrv_um.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libusc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libusc.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libPVROCL.so:$(TARGET_COPY_OUT_VENDOR)/lib/libPVROCL.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/liboclcompiler.so:$(TARGET_COPY_OUT_VENDOR)/lib/liboclcompiler.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libufwriter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libufwriter.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libLLVMIMG.so:$(TARGET_COPY_OUT_VENDOR)/lib/libLLVMIMG.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libclangIMG.so:$(TARGET_COPY_OUT_VENDOR)/lib/libclangIMG.so

# vendor/lib64
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/egl/libEGL_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libEGL_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/egl/libGLESv1_CM_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libGLESv1_CM_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/egl/libGLESv2_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libGLESv2_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/hw/gralloc.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/gralloc.rk3368.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libcreatesurface.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcreatesurface.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libglslcompiler.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libglslcompiler.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libIMGegl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libIMGegl.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libpvrANDROID_WSEGL.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libpvrANDROID_WSEGL.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libPVRScopeServices.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libPVRScopeServices.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libsrv_init.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsrv_init.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libsrv_um.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsrv_um.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libusc.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libusc.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libPVROCL.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libPVROCL.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/liboclcompiler.so:$(TARGET_COPY_OUT_VENDOR)/lib64/liboclcompiler.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libufwriter.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libufwriter.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libsutu_display.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsutu_display.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libLLVMIMG.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libLLVMIMG.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib64/libclangIMG.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libclangIMG.so

else
# etc
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/powervr.ini:$(TARGET_COPY_OUT_VENDOR)/etc/powervr.ini

# lib
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/lib/egl/egl.cfg:$(TARGET_COPY_OUT_VENDOR)/lib/egl/egl.cfg

BOARD_VENDOR_KERNEL_MODULES += \
	device/redroid/vendor/libG6110/G6110_64/lib/modules/pvrsrvkm.ko

# vendor/firmware
PRODUCT_COPY_FILES += \
   device/redroid/vendor/libG6110/G6110_64/vendor/firmware/rgx.fw.signed.5.9.1.46:$(TARGET_COPY_OUT_VENDOR)/firmware/rgx.fw.signed.5.9.1.46 \
   device/redroid/vendor/libG6110/G6110_64/vendor/firmware/rgx.fw.signed.5.9.1.46:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/rgx.fw.signed.5.9.1.46

# vendor/bin
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/vendor/bin/pvrsrvctl:$(TARGET_COPY_OUT_VENDOR)/bin/pvrsrvctl \
    device/redroid/vendor/libG6110/G6110_64/vendor/bin/pvrtld:$(TARGET_COPY_OUT_VENDOR)/bin/pvrtld

# Vulkan support, use swiftshader when supporting GMS.
ifneq ($(strip $(BUILD_WITH_GOOGLE_MARKET)), true)
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/hw/vulkan.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/vulkan.rk3368.so
endif
# vendor/lib
PRODUCT_COPY_FILES += \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/egl/libEGL_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libEGL_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/egl/libGLESv1_CM_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv1_CM_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/egl/libGLESv2_POWERVR_ROGUE.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv2_POWERVR_ROGUE.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/hw/gralloc.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/gralloc.rk3368.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/hw/memtrack.rk3368.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/memtrack.rk3368.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libcreatesurface.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcreatesurface.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libglslcompiler.so:$(TARGET_COPY_OUT_VENDOR)/lib/libglslcompiler.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libIMGegl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libIMGegl.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libpvrANDROID_WSEGL.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpvrANDROID_WSEGL.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libPVRScopeServices.so:$(TARGET_COPY_OUT_VENDOR)/lib/libPVRScopeServices.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libsrv_um.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsrv_um.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libusc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libusc.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libPVROCL.so:$(TARGET_COPY_OUT_VENDOR)/lib/libPVROCL.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/liboclcompiler.so:$(TARGET_COPY_OUT_VENDOR)/lib/liboclcompiler.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libufwriter.so:$(TARGET_COPY_OUT_VENDOR)/lib/libufwriter.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libLLVMIMG.so:$(TARGET_COPY_OUT_VENDOR)/lib/libLLVMIMG.so \
    device/redroid/vendor/libG6110/G6110_64/vendor/lib/libclangIMG.so:$(TARGET_COPY_OUT_VENDOR)/lib/libclangIMG.so

endif
