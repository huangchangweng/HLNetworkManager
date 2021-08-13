//
//  NetworkHelper.m
//  HLNetworkManager
//
//  Created by JJB_iOS on 2021/8/12.
//

#import "NetworkHelper.h"
#import "ApiHostDefines.h"

@implementation NetworkHelper

+ (__kindof NSURLSessionTask *)request:(HLRequestType)type
                                method:(NSString *)method
                            parameters:(id)parameters
                               isCache:(BOOL)isCache
                               success:(void(^)(BOOL success, NSString *msg, id data))success
                               failure:(void(^)(NSError *error))failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@", kApiPrefix, method];
    HLHttpRequestCache responseCache = ^(id cacheObject){
        if (success && cacheObject) {
            success(YES, @"获取缓存成功", cacheObject);
        }
    };
    NSURLSessionTask *sessionTask = [HLNetworkManager request:HLRequestTypePOST URL:url parameters:parameters responseCache:isCache?responseCache:NULL success:^(id responseObject) {
        
        // TODO...
        
        if (success) {success(YES, @"请求成功", responseObject);}
    } failure:^(NSError *error) {
        if (failure) {failure(error);}
    }];
    return sessionTask;
}

@end
