# HLNetworkManager
HLNetworkManager是结合AFNetworking、YYCache封装的轻量级网络请求库.<p>

##### 支持使用CocoaPods引入, Podfile文件中添加:

```objc
pod 'HLNetworkManager'
```
✅1.自定义请求方式 <p>
✅2.自定义请求头 <p>
✅3.自定义请求参数是Json还是二进制 <p>
✅4.自定义返回数据类型是Json还是二进制 <p>
✅5.方便的网络状态检查 <p>
✅6.方便的日志输出 <p>
✅7.方便的请求缓存<p>

基本使用方法:<p>

```
[HLNetworkManager request:HLRequestTypePOST 
                      URL:url 
               parameters:parameters 
    qqqqqqqqresponseCache:^(id cacheObject) {
    
} success:^(id responseObject) {
    
} failure:^(NSError *error) {
    
}];
```

其它可选设置:（更所设置请参照HLNetworkManager.h）<p>

```
// 设置网络请求参数的格式:默认为二进制格式
[HLNetworkManager setRequestSerializer:HLRequestSerializerTypeJSON];

// 日志开关，默认开启
[HLNetworkManager openLog:YES];

// 配置自建证书的Https请求
[HLNetworkManager setSecurityPolicyWithCerPath:cerPath validatesDomainName:YES];

// 设置headers
[HLNetworkManager setHTTPHeaders:headers];
```

# Requirements

iOS 8.0 +, Xcode 7.0 +

# Version

* 1.0.2 :
  1.优化请求头传入
  2.添加线程安全支持

* 1.0.1 : 

  修复 [#issue5](https://github.com/huangchangweng/HLNetworkManager/commit/644204e71d006a5286e5681d342efacbe32e9c5c)<p>
  日志输入nil崩溃问题

  ```
  if (!object) {
      return @"";
  }
  ```

* 1.0.0 :

  完成HLNetworkManager基础搭建

# License
HLNetworkManager is available under the MIT license. See the LICENSE file for more info.
