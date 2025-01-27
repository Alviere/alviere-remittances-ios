Pod::Spec.new do |s|
  s.name              = 'RemittancesSDK'
  s.version           = '0.9.26'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-remittances-ios/releases/download/#{s.version.to_s}/RemittancesSDK.xcframework.zip", :sha256 => '4a575b5a3d1e77217a27d7214b1a7d3509b03e61c15fdf37e885b5cbfee0c354' }
  s.summary           = 'The mobile Remittances Alviere SDK.'
  s.platform          = :ios, '13.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'RemittancesSDK.xcframework'
  s.dependency 'AlCore', '0.9.26'
end