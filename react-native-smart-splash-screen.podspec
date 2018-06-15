require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-smart-splash-screen"
  s.version      = package['version']
  s.summary      = "react-native-smart-splash-screen solution"

  s.authors      = { "Y" => "Y" }
  s.homepage     = "https://github.com/react-native-component/react-native-smart-splash-screen.git#readme"
  s.license      = package['license']
  s.platform     = :ios, "8.0"

  s.module_name  = 'RCTSplashScreen'

  s.source       = { :git => "https://github.com/react-native-component/react-native-smart-splash-screen.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.header_mappings_dir = 'ios'
  s.public_header_files = "ios/*.h"

  s.dependency 'React'
  s.frameworks = 'UIKit'
end