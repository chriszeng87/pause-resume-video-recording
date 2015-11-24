LOCAL_PATH := $(call my-dir)
FFMPEG_PATH := $(LOCAL_PATH)/../../../../../libffmpeg/include
include $(CLEAR_VARS)     
LOCAL_MODULE    := libffmpeg    
LOCAL_SRC_FILES := ../libs/libffmpeg.so      
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS) 
LOCAL_MODULE    := publisher

LOCAL_C_INCLUDES := $(FFMPEG_PATH)

                   
LOCAL_SRC_FILES := com_chris_video_RTMPPublisher.cpp \
                   

LOCAL_STATIC_LIBRARIES +=  libffmpeg


# for logging
LOCAL_LDLIBS    += -llog

include $(BUILD_SHARED_LIBRARY)
