# pause-resume-video-recording
Pause while video recording on android devices using MediaCodec and MediaMuxer  
Inspired by http://stackoverflow.com/questions/21018578/pause-resume-mediacodec  
This project is modified from  Google's Grafika https://github.com/google/grafika  
The speed is super fast because no ffmpeg is used and no merge process for multiple clips.  
With the use of MediaMuxer, only devices with API level bigger than 17 is compatible.  

