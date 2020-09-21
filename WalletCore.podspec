Pod::Spec.new do |s|
    s.name         = 'WalletCore'
    s.version      = '2.2.10'
    s.summary      = 'Trust Wallet core data structures and algorithms.'
    s.homepage     = 'https://github.com/trustwallet/wallet-core'
    s.license      = 'MIT'
    s.authors      = { 'Alejandro Isaza' => 'al@isaza.ca' }
  
    s.ios.deployment_target = '11.0'
    s.osx.deployment_target = '10.12'
    s.swift_version = '5.1'
  
    s.source = {
      http: "https://github.com/trustwallet/wallet-core/releases/download/2.2.10/TrustWalletCore-iOS-2.2.10.zip"
    }
    s.default_subspec = 'Core'
  
    s.subspec 'Types' do |ss|
      ss.source_files = 
        'wallet-core/swift/Sources/Generated/Enums/*.swift',
        'wallet-core/swift/Sources/Generated/Protobuf/*.swift'
      ss.dependency 'SwiftProtobuf'
    end
  
    s.subspec 'Core' do |ss|
      ss.preserve_paths = 'wallet-core/build/ios/*.a'
      ss.vendored_libraries =
        'wallet-core/build/ios/libprotobuf.a',
        'wallet-core/build/ios/libTrezorCrypto.a',
        'wallet-core/build/ios/libTrustWalletCore.a'
      s.source_files =
        'wallet-core/include/**/*.h',
        'wallet-core/swift/Sources/*.{swift,h,m,cpp}',
        'wallet-core/swift/Sources/Extensions/*.swift',
        'wallet-core/swift/Sources/Generated/*.{swift,h}'
      ss.public_header_files =
        'wallet-core/include/**/*.h',
        'wallet-core/swift/Sources/*.h'
      ss.libraries = 'c++'
      ss.xcconfig = {
          'PRODUCT_MODULE_NAME' => 'TrustWalletCore',
          'SYSTEM_HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/WalletCore/include ${PODS_ROOT}/WalletCore/swift/Sources',
          'OTHER_LDFLAGS' => '$(inherited) -fprofile-instr-generate'
      }
      ss.pod_target_xcconfig = {
          'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
      }
      ss.dependency 'WalletCore/Types'
    end
  end