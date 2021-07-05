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
  s.source_files = 'GFGeneralLib/GFGeneraManager.h','GFGeneralLib/GFGeneralLib.h'

  s.subspec 'Constant' do |ss|
  ss.ios.deployment_target = '9.0'
  ss.source_files = 'GFGeneralLib/Constant/*.{h,m}'
  end
  s.subspec 'Foundation' do |ss|
  ss.ios.deployment_target = '9.0'
  ss.source_files = 'GFGeneralLib/Foundation/*.{h,m}'
  
  end
  
  s.subspec 'UIKit' do |ss|
  ss.ios.deployment_target = '9.0'
  ss.source_files = 'GFGeneralLib/UIKit/*.{h,m}'
  end
  
  s.subspec 'BaseClass' do |ss|
  ss.ios.deployment_target = '9.0'
  ss.source_files = 'GFGeneralLib/BaseClass'
  ss.dependency 'GFGeneralLib/Constant'
  ss.dependency 'GFGeneralLib/Foundation'
  ss.dependency 'GFGeneralLib/UIKit'
  
  end
  s.subspec 'GFPickView' do |ss|
  ss.ios.deployment_target = '9.0'
    ss.source_files = 'GFGeneralLib/GFPickView/*.{h,m}'
  end
  s.subspec 'GFTools' do |ss|
  ss.ios.deployment_target = '9.0'
  ss.dependency 'GFGeneralLib/Constant'
  ss.dependency 'GFGeneralLib/Foundation'
  ss.dependency 'GFGeneralLib/UIKit'
  ss.source_files = 'GFGeneralLib/GFTools/*.{h,m}'
  
  end
  
  
  
  
  
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
