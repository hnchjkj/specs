 Pod::Spec.new do |s|
  s.name             = 'CJSDK'
  s.version          = '0.0.2'
  s.summary          = 'A short description of CJSDK.'
  s.description      = <<-DESC
                       TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/hnchjkj/gameSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hnchjkj' => 'hnchjkj@126.com' }
  s.source              = { :git => 'https://github.com/hnchjkj/gameSDK.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  
  
  # CJCore 子库
  s.subspec "CJCore" do |core|
    core.vendored_frameworks = 'CJSDK/CJCore.xcframework'
    core.source_files = 'CJCore/Classes/**/*'
    core.dependency 'Moya'
    core.dependency 'DeviceKit'
    core.dependency 'SnapKit'
    core.dependency 'SmartCodable'
    core.dependency 'CocoaLumberjack/Swift', '~> 3.7.2'
    core.dependency 'SVProgressHUD'
    core.dependency 'Toast-Swift'
  end
  
  # CJPayment 子库
  s.subspec "CJPayment" do |payment|
    payment.vendored_frameworks = 'CJSDK/CJPayment.xcframework'
    payment.source_files        = 'CJPayment/Classes/**/*'
    payment.dependency 'CJSDK/CJCore'
    
    # payment.resource_bundles = {
    #   'CJPayment' => ['CJPayment/Assets/*.png']
    # }

    # payment.public_header_files = 'Pod/Classes/**/*.h'
    # payment.frameworks = 'UIKit', 'MapKit'
    # payment.dependency 'AFNetworking', '~> 2.3'
  end

  # CJAuth 子库
  s.subspec "CJAuth" do |auth|
    auth.vendored_frameworks = 'CJSDK/CJAuth.xcframework'
    auth.source_files        = 'CJAuth/Classes/**/*'
    auth.dependency 'Firebase/Core'
    auth.dependency 'Firebase/Auth'
    auth.dependency 'CJSDK/CJCore'
    auth.dependency 'FBSDKLoginKit', '~> 16.0'
    auth.dependency 'TwitterKit'
    auth.dependency 'WRSignInWithApple'
    auth.dependency 'Kingfisher'
    auth.dependency 'LineSDKSwift', '~> 5.0'
    auth.dependency 'YYText-swift'
    auth.dependency 'NidThirdPartyLogin'
  end
  
  # CJService 子库
  s.subspec "CJService" do |service|
    service.vendored_frameworks = 'CJSDK/CJService.xcframework'
    service.source_files = 'CJService/Classes/**/*'
    service.dependency 'TZImagePickerController'
    service.dependency 'CJSDK/CJCore'
    service.dependency 'YYText-swift'
    service.dependency 'MJRefresh'
    service.dependency 'JXPhotoBrowser'
    service.dependency 'Kingfisher'
    service.dependency 'AWSCore'
    service.dependency 'AWSS3'
    service.dependency 'SmartCodable'
    service.swift_version = ['5.0','5.9']
  end

end
