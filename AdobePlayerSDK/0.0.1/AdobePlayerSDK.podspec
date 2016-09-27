Pod::Spec.new do |s|

#Versioning to match the version of NetWise.framework
s.version               = '0.0.1'

s.name                  = 'AdobePlayerSDK'
s.ios.deployment_target = '8.0'
s.summary               = 'POD for the Adobe frameworks'
s.homepage              = 'https://gitlab.spectrumxg.com/rich/AdobePlayerSDK'
s.license               = { :type => 'MIT', :file => 'LICENSE' }
s.author                = { 'Rich Fellure' => 'richard.w.fellure@charter.com' }
s.source                = { :git => 'git@gitlab.spectrumxg.com:rich/AdobePlayerSDK.git', :tag => s.version.to_s }

s.preserve_path        = 'AdobePlayerSDK/Frameworks/Documentation/*.pdf'
s.frameworks            = 'MediaPlayer', 'AVKit', 'AVFoundation', 'SystemConfiguration', 'MobileCoreServices', 'CFNetwork', 'CoreGraphics', 'Security', 'CoreMedia'
s.libraries             = 'xml2.2', 'z', 'sqlite3.0', 'stdc++.6'
s.vendored_frameworks   = 'AdobePlayerSDK/Frameworks/PSDKLibrary.framework',  'AdobePlayerSDK/Frameworks/drmNativeInterface.framework'
s.resources             = 'AdobePlayerSDK/Frameworks/PSDKResources.bundle'
other_ldflags           = '$(inherited) -lstdc++ -ObjC'
s.ios.xcconfig          = {
'OTHER_LDFLAGS' => other_ldflags
}
s.source_files          = 'AdobePlayerSDK/Classes/*.{h,m,swift}', 'AdobePlayerSDK/Frameworks/*.framework/Headers/*.h'
s.public_header_files = 'AdobePlayerSDK/Frameworks/*.framework/Headers/*.h'
end
