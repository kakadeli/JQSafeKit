Pod::Spec.new do |s|
  s.name         = "JQSafeKit"
  s.version      = "0.0.1"
  s.summary      = "This framework can effective avoid crash by potential error code and also can avoid crash and note you that where cause crash of JQSafeKit"
  s.homepage     = "https://github.com/XiaoHanGe/JQSafeKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "韩俊强" => "532167805" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/XiaoHanGe/JQSafeKit.git", :tag => s.version.to_s }
  s.source_files  = "JQSafeKit", "JQSafeKit/**/*.{h,m}"
  s.public_header_files = "JQSafeKit/**/*.h"
  s.requires_arc = true
end
