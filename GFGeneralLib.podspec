#
# Be sure to run `pod lib lint GFGeneralLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GFGeneralLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of GFGeneralLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/qq97617564/GFGeneralLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WGF' => '597617564@qq.com' }
  s.source           = { :git => 'https://github.com/qq97617564/GFGeneralLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'GFGeneralLib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GFGeneralLib' => ['GFGeneralLib/Assets/*.png']
  # }

   s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'MJExtension'
   s.dependency 'Masonry'
   #s.dependency 'Masonry'
   s.dependency 'SDWebImage'
   s.dependency 'GTMBase64', '~> 1.0.1'
end
