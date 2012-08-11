LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := SEC_OMX_Component_Register.c \
	SEC_OMX_Core.c


LOCAL_MODULE := libSEC_OMX_Core.s5p6442

LOCAL_CFLAGS :=

LOCAL_ARM_MODE := arm

LOCAL_STATIC_LIBRARIES := libsecosal.s5p6442 libsecbasecomponent.s5p6442
LOCAL_SHARED_LIBRARIES := libc libdl libcutils libutils

LOCAL_C_INCLUDES := $(SEC_OMX_INC)/khronos \
	$(SEC_OMX_INC)/sec \
	$(SEC_OMX_TOP)/sec_osal \
	$(SEC_OMX_TOP)/sec_omx_component/common

include $(BUILD_SHARED_LIBRARY)

