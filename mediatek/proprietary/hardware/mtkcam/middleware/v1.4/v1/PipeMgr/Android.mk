# Copyright Statement:
#
# This software/firmware and related documentation ("MediaTek Software") are
# protected under relevant copyright laws. The information contained herein
# is confidential and proprietary to MediaTek Inc. and/or its licensors.
# Without the prior written permission of MediaTek inc. and/or its licensors,
# any reproduction, modification, use or disclosure of MediaTek Software,
# and information contained herein, in whole or in part, shall be strictly prohibited.

# MediaTek Inc. (C) 2010. All rights reserved.
#
# BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
# THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
# RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
# AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
# NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
# SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
# SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
# THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
# THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
# CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
# SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
# STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
# CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
# AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
# OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
# MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
#
# The following software/firmware and/or related documentation ("MediaTek Software")
# have been modified by MediaTek Inc. All revisions are subject to any receiver's
# applicable license agreements with MediaTek Inc.

################################################################################

LOCAL_PATH := $(call my-dir)

################################################################################
#
################################################################################
include $(CLEAR_VARS)

-include $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/mtkcam.mk

#-----------------------------------------------------------
LOCAL_SRC_FILES += \
    PipeMgrImp.cpp \
    PipeMgrImp.Factory.cpp \
    PipeMgrImp.NorPrv.cpp \
    PipeMgrImp.NorCap.cpp \
    PipeMgrImp.VdoRec.cpp \
    PipeMgrImp.ZsdPrv.cpp \
    PipeMgrImp.ZsdCap.cpp \
#-----------------------------------------------------------
LOCAL_C_INCLUDES += $(MTKCAM_C_INCLUDES)
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/include
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/include/D1
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/ext/include
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/gralloc_extra/include
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/middleware/$(MTKCAM_HAL_VERSION)
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/middleware/common/include
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/middleware/common/v3/pipeline
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/middleware/common
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/mtkcam/include/$(PLATFORM)
LOCAL_C_INCLUDES += $(MTKCAM_HAL_INCLUDE)
LOCAL_C_INCLUDES += $(MTKCAM_3A_INCLUDE)
LOCAL_C_INCLUDES += $(MTKCAM_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MTKCAM_DRV_INCLUDE)/drv
#for camera metadata
LOCAL_C_INCLUDES += $(TOP)/system/media/camera/include
#for camera parameters
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/frameworks/av/include
#for vector
LOCAL_C_INCLUDES += $(TOP)/bionic
LOCAL_C_INCLUDES += $(TOP)/external/stlport/stlport

#-----------------------------------------------------------
LOCAL_CFLAGS += $(MTKCAM_CFLAGS)

#-----------------------------------------------------------
LOCAL_STATIC_LIBRARIES +=
#
LOCAL_WHOLE_STATIC_LIBRARIES += 
#
LOCAL_SHARED_LIBRARIES += liblog
LOCAL_SHARED_LIBRARIES += libutils
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += libui
#LOCAL_SHARED_LIBRARIES += libstlport
LOCAL_SHARED_LIBRARIES += libdl
LOCAL_SHARED_LIBRARIES += libjpeg
LOCAL_SHARED_LIBRARIES += libaed 
#
LOCAL_SHARED_LIBRARIES += libcam.halsensor
#
LOCAL_SHARED_LIBRARIES += libcam_utils
LOCAL_SHARED_LIBRARIES += libcam1_utils
LOCAL_SHARED_LIBRARIES += libcam.paramsmgr
LOCAL_SHARED_LIBRARIES += libcam_hwutils
#
LOCAL_SHARED_LIBRARIES += libcam.streambufprovider
LOCAL_SHARED_LIBRARIES += libcam3_pipeline
LOCAL_SHARED_LIBRARIES += libcam.metadata
LOCAL_SHARED_LIBRARIES += libcam3_utils
LOCAL_SHARED_LIBRARIES += libcam3_hwnode
LOCAL_SHARED_LIBRARIES += libcam.metadataprovider

#-----------------------------------------------------------
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libcam.pipemgr
#-----------------------------------------------------------
include $(BUILD_SHARED_LIBRARY)

################################################################################
#
################################################################################
include $(CLEAR_VARS)
include $(call all-makefiles-under,$(LOCAL_PATH))
