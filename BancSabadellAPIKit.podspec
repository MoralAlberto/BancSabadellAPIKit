#
# Be sure to run `pod lib lint BancSabadellAPIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BancSabadellAPIKit'
  s.version          = '0.1.0'
  s.summary          = 'A delightbul networkin API to manage BancSabadell requests'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The main concepts to interact with the BancSabadell API. It uses OAUTH 2.0 to get a valid token, and two simple API to get the user's account and credit cards.
To prove the demo code, you need to provide a valid client identifier and client secret. Also, you must have a test user to log in.
                       DESC

  s.homepage         = 'https://github.com/MoralAlberto/BancSabadellAPIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alberto Moral' => 'alberto.moral.g@gmail.com' }
  s.source           = { :git => 'https://github.com/MoralAlberto/BancSabadellAPIKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MoralAlberto'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BancSabadellAPIKit/Classes/**/*'
  
# s.resource_bundles = {
#  'BancSabadellAPIKit' => ['BancSabadellAPIKit/Classes/**/APIConstants.plist']
#}


  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'OAuthSwift'
    s.dependency 'ObjectMapper' 
end
