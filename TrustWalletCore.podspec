Pod::Spec.new do |s|
    s.name         = 'TrustWalletCore'
    s.version      = '2.2.10'
    s.summary      = 'Trust Wallet core data structures and algorithms.'
    s.homepage     = 'https://github.com/trustwallet/wallet-core'
    s.license      = 'MIT'
    s.authors      = { 'Alejandro Isaza' => 'al@isaza.ca' }
    s.module_name  = 'WalletCore'
  
    s.ios.deployment_target = '11.0'
    s.osx.deployment_target = '10.12'
    s.swift_version = '5.1'
  
    s.source = {
      git: 'git@github.com:hewigovens/wallet-core-carthage.git'
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
      ss.vendored_libraries = 'wallet-core/build/ios/*.a'
      ss.exclude_files = 'wallet-core/swift/Sources/Generated/TrustWalletCore.h'
      ss.source_files =
        'wallet-core/include/**/*.h',
        'wallet-core/swift/Sources/*.{swift,h,m,cpp}',
        'wallet-core/swift/Sources/Extensions/*.swift',
        'wallet-core/swift/Sources/Generated/*.{swift,h}'
      ss.public_header_files =
        'wallet-core/include/**/*.h',
        'wallet-core/swift/Sources/*.h'
      ss.libraries = 'c++'
      ss.xcconfig = {
          'OTHER_LDFLAGS' => '$(inherited) -fprofile-instr-generate'
      }
      ss.pod_target_xcconfig = {
          'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
      }
      ss.dependency 'TrustWalletCore/Types'
    end
  end
