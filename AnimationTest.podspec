Pod::Spec.new do |s|
  s.name         = ‘AnimationTest’
  s.summary      = ‘An Animation Test For IOS.’
  s.version      = ‘1.0.0’
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { ‘CZ’ => ‘332006721@qq.com’ }
  s.social_media_url = 'https://github.com/chenzhuoyj'
  s.homepage     = 'https://github.com/chenzhuoyj/AnimationTest'
  s.platform     = :ios, ‘8.0’
  s.ios.deployment_target = ‘8.0’
  s.source       = { :git => 'https://github.com/chenzhuoyj/AnimationTest.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'YYCache/*.{h,m}'
  s.public_header_files = 'YYCache/*.{h}'
  
  s.libraries = 'sqlite3'
  s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore' 

end