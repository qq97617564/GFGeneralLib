#
# Be sure to run `pod lib lint GFGeneralLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GFGeneralLib'
  s.version          = '0.1.7'
  s.summary          = 'Mr. WGF project general code, go to Git for details'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/qq97617564/GFGeneralLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WGF' => '597617564@qq.com' }
  s.source           = { :git => 'https://github.com/qq97617564/GFGeneralLib.git', :tag => s.version.to_s }

  #s.platform    = :ios, "9.0"

  s.ios.deployment_target = '9.0'
  s.source_files = 'GFGeneralLib/GFGeneraManager.h','GFGeneralLib/GFGeneralLib.h','GFGeneralLib/*','GFGeneralLib/**/*.{h,m}',

  
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'MJExtension'
  s.dependency 'SDWebImage'
  s.dependency 'IQKeyboardManager'
  s.dependency 'AFNetworking'
  s.dependency 'MBProgressHUD'
  s.dependency 'MJRefresh'
  s.dependency 'Masonry'
  s.dependency 'GTMBase64'
  s.dependency 'TZImagePickerController'
  s.dependency 'YBImageBrowser'
   
end
