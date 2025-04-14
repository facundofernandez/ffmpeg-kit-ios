
Pod::Spec.new do |s|
    s.name             = 'facundofernandez-ffmpeg-kit-ios-https'
    s.version          = '6.0.2'
    s.summary          = 'FFmpeg iOS Binaries'
    s.homepage         = 'https://github.com/facundofernandez/ffmpeg'
    s.license          = { :type => "LGPL-3.0" }
    s.authors          = 'facundofernandez'
    s.platform         = :ios, '12.1'
    s.static_framework = true
    s.requires_arc     = true
  
    # Link to the zip file on your GitHub release
    s.source = {
      :http => 'https://github.com/facundofernandez/ffmpeg-kit-ios/releases/download/6.0.2/ffmpegkit-ios.xcframework.zip',
      :type => 'zip'
    }
    s.vendored_frameworks = [
      'ffmpegkit.xcframework',
      'libavcodec.xcframework',
      'libavdevice.xcframework',
      'libavfilter.xcframework',
      'libavformat.xcframework',
      'libavutil.xcframework',
      'libswresample.xcframework',
      'libswscale.xcframework'
    ]
  
    s.libraries = [ "z", "bz2", "c++", "iconv" ]
    s.frameworks = [ "AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox" ]
  end
  