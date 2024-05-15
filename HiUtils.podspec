Pod::Spec.new do |s|
  s.name             = 'HiUtils'
  s.version          = '1.0.0'
  s.summary          = 'Utils module.'
  s.description      = <<-DESC
						Utils module using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiUtils.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '13.0'
  s.frameworks = 'Foundation', 'UIKit'
  
  s.source_files = 'HiUtils/**/*'
  s.dependency 'FCUUID', '1.3.1'
  
end
