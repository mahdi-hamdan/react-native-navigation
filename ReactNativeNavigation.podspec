require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "ReactNativeNavigation"
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = "Wix.com"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platforms     = { :ios => "9.0", :tvos => "13.0" }

  s.module_name  = 'ReactNativeNavigation'

  s.source       = { :git => "https://github.com/mahdi-hamdan/react-native-navigation.git", :tag => "6.5.5" }
  s.source_files  = "lib/ios/**/*.{h,m}"
  s.exclude_files  = "lib/ios/ReactNativeNavigationTests/**/*.*", "lib/ios/OCMock/**/*.*"

  s.dependency 'React'
  s.dependency 'React-RCTImage'
  s.dependency 'React-RCTText'
  s.frameworks = 'UIKit'
end
