Pod::Spec.new do |s|
  s.name              = 'RemittancesSDK'
  s.version           = '0.9.24'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-remittances-ios/releases/download/#{s.version.to_s}/RemittancesSDK.xcframework.zip", :sha256 => '6d3f7b5cf061ff16e49967b5475ea27287a87b7dd5294f6debec25d697cb61ee' }
  s.summary           = 'The mobile Remittances Alviere SDK.'
  s.platform          = :ios, '12.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'RemittancesSDK.xcframework'
  s.dependency 'AlCore', '0.9.24'
end