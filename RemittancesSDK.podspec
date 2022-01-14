Pod::Spec.new do |s|
  s.name              = 'RemittancesSDK'
  s.version           = '0.9.4'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-remittances-ios/releases/download/#{s.version.to_s}/RemittancesSDK.xcframework.zip", :sha256 => '9e5b47b5adeefc556507993b9a5e61fb429399f6dfa4ba526511822f95955369' }
  s.summary           = 'The mobile Remittances Alviere SDK.'
  s.platform          = :ios, '11.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'RemittancesSDK.xcframework'
  s.dependency 'AlCore', '0.9.4'
end