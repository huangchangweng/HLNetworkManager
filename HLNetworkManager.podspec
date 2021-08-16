Pod::Spec.new do |spec|

  spec.name         = "HLNetworkManager"
  spec.version      = "1.0.0"
  spec.summary      = "HLNetworkManager是结合AFNetworking、YYCache封装的轻量级网络请求库"

  # 描述
  spec.description  = <<-DESC
  HLNetworkManager支持： 1.自定义请求方式 2.自定义请求头 3.自定义请求参数是Json还是二进制 4.自定义返回数据类型是Json还是二进制 5.方便的网络状态检查 6.方便的日志输出 7.方便的请求缓存
  DESC

  # 项目主页
  spec.homepage     = "https://github.com/huangchangweng/HLNetworkManager"

  # 开源协议
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  # 作者
  spec.author             = { "黄常翁" => "599139419@qq.com" }
  
  # 支持平台
  spec.platform     = :ios, "9.0"

  # git仓库，tag
  spec.source       = { :git => "git@github.com:huangchangweng/HLNetworkManager.git", :tag => "1.0.0" }

  # 资源路径
  spec.source_files  = "HLNetworkManager/HLNetworkManager/*.{h,m}"

  # 依赖系统库
  spec.frameworks = "Foundation", "UIKit"

  # 依赖第三方库
  spec.dependency "AFNetworking"
  spec.dependency "YYCache"

end
