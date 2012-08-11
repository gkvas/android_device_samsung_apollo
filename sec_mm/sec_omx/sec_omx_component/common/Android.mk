LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	SEC_OMX_Basecomponent.c \
	SEC_OMX_Baseport.c \
	SEC_OMX_Resourcemanager.c


LOCAL_MODULE := libsecbasecomponent.s5p6442

LOCAL_CFLAGS :=

LOCAL_STATIC_LIBRARIES := libsecosal.s5p6442
LOCAL_SHARED_LIBRARIES := libcutils libutils

LOCAL_C_INCLUDES := $(SEC_OMX_INC)/khronos \
	$(SEC_OMX_INC)/sec \
	$(SEC_OMX_TOP)/sec_osal

include $(BUILD_STATIC_LIBRARY)
