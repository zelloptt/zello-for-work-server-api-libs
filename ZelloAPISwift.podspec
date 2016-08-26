Pod::Spec.new do |s|

  s.name             = 'ZelloAPISwift'
  s.version          = '1.0'
  s.summary          = 'ZelloAPISwift is a Zello for Work server API client library written in Swift.'
  s.license          = { :type => "MIT", :file => "LICENSE" }

  s.description      =
  <<-DESC
  The Zello server API offers an easy way to interact with Zello server in order to manipulate users and channels from your application.
  The API is based on JSON over HTTP protocol. Requests are sent using GET and POST HTTP requests, server responses are returned in HTTP response body and presented in JSON.
  Each response includes "status" and "code" fields, indicating the response success status or error details. In the case of success, code is "200" and status is "OK".
  DESC

  s.homepage         = 'https://github.com/zelloptt/zello-for-work-server-api-libs/tree/master/swift/CocoaPod'
  s.author           = { 'Zello' => 'dev@zello.com' }
  s.source           = { :git => 'https://github.com/zelloptt/zello-for-work-server-api-libs.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.preserve_paths  = "swift/CocoaPod/CommonCrypto/*"
  s.source_files    = "swift/CocoaPod/ZelloAPISwift/*"
  s.requires_arc    = true

s.xcconfig          = { 'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]' => '$(PODS_ROOT)/ZelloAPISwift/swift/CocoaPod/CommonCrypto/iphonesimulator/',
                        'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]' => '$(PODS_ROOT)/ZelloAPISwift/swift/CocoaPod/CommonCrypto/iphoneos/',
                        'SWIFT_INCLUDE_PATHS[sdk=appletvos*]' => '$(PODS_ROOT)/ZelloAPISwift/swift/CocoaPod/CommonCrypto/appletvos/',
                        'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/ZelloAPISwift/swift/CocoaPod/CommonCrypto/appletvsimulator/' }

  s.prepare_command = <<-CMD
                        mkdir -p CommonCrypto/iphoneos
                        mkdir -p CommonCrypto/iphonesimulator
                        mkdir -p CommonCrypto/appletvos
                        mkdir -p CommonCrypto/appletvsimulator
                        cp swift/CocoaPod/CommonCrypto/iphoneos.modulemap CommonCrypto/iphoneos/module.modulemap
                        cp swift/CocoaPod/CommonCrypto/iphonesimulator.modulemap CommonCrypto/iphonesimulator/module.modulemap
                        cp swift/CocoaPod/CommonCrypto/iphonesimulator.modulemap CommonCrypto/appletvos/module.modulemap
                        cp swift/CocoaPod/CommonCrypto/iphonesimulator.modulemap CommonCrypto/appletvsimulator/module.modulemap
                        CMD

end
