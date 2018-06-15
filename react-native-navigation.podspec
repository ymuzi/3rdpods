require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-navigation"
  s.version      = package['version']
  s.summary      = "React-native navigation solution"

  s.authors      = { "Wix" => "Wix" }
  s.homepage     = "https://github.com/wix/react-native-navigation.git#readme"
  s.license      = package['license']
  s.platform     = :ios, "8.0"

  s.module_name  = 'ReactNativeNavigation'

  s.source       = { :git => "https://github.com/wix/react-native-navigation.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.header_mappings_dir = 'ios'
  s.public_header_files = "ios/*.h"

  s.dependency 'React'
  s.frameworks = 'UIKit'
end