Pod::Spec.new do |s|
  s.author = 'Zoom.us'
  s.homepage = 'https://developer.zoom.us/docs/ios/'
  s.libraries = ['sqlite3', 'stdc++.6.0.9', 'z.1.2.5']
  s.license = { :text => '', :type => 'Commercial' }
  s.name = 'ZoomMobileRTCSDK'
  s.summary = 'ZOOM iOS SDK'
  s.version = '4.1.20273.0206'

  s.source = {
    :git => 'https://github.com/zoom/zoom-sdk-ios.git',
    :tag => "v#{s.version}"
  }

  s.platform = :ios
  s.ios.deployment_target = '7.0'

  s.source_files = 'lib/MobileRTC.framework/Headers/*.{h}'
  s.ios.header_dir = 'lib/MobileRTC'
  s.public_header_files = 'lib/MobileRTC.framework/Headers/*.h'
  s.vendored_frameworks = 'lib/MobileRTC.framework'
  s.resources ='lib/MobileRTCResources.bundle'
  s.frameworks = [ 'MobileRTC', 'VideoToolbox', 'CoreBluetooth' ]
end
