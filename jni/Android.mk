LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)     
LOCAL_MODULE    := libffmpeg    
LOCAL_SRC_FILES := $(LOCAL_PATH)/ffmpeg/libffmpeg.so
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS) 
LOCAL_MODULE    := publisher


FFMPEG_INCLUDE_PATH := $(LOCAL_PATH)/ffmpeg/include

LOCAL_C_INCLUDES := $(FFMPEG_INCLUDE_PATH)

                   
LOCAL_SRC_FILES :=  cmdutils.c\
                    ffmpeg_opt.c\
                    ffmpeg_filter.c\
                    ffmpeg.c\
                    com_chris_video_RTMPPublisher.cpp \

                   

LOCAL_STATIC_LIBRARIES +=  libffmpeg


# for logging
LOCAL_LDLIBS    += -llog

include $(BUILD_SHARED_LIBRARY)
