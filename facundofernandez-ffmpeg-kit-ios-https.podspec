
Pod::Spec.new do |s|
    s.name             = 'facundofernandez-ffmpeg-kit-ios-https'
    s.version          = '6.0.2'
    s.summary          = 'FFmpeg iOS Binaries'
    s.homepage         = 'https://github.com/facundofernandez/ffmpeg-kit-ios'
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

    s.libraries = [
        "z",
        "bz2",
        "c++",
        "iconv"
    ]

    s.frameworks = [
        "AudioToolbox",
        "AVFoundation",
        "CoreMedia",
        "VideoToolbox"
    ]
    
    s.ios.vendored_frameworks = 'Frameworks/ffmpegkit.xcframework',
    'Frameworks/libavcodec.xcframework',
    'Frameworks/libavdevice.xcframework',
    'Frameworks/libavfilter.xcframework',
    'Frameworks/libavformat.xcframework',
    'Frameworks/libavutil.xcframework',
    'Frameworks/libswresample.xcframework',
    'Frameworks/libswscale.xcframework'
end