//
//  NetworkHelper.h
//  HLNetworkManager
//
//  Created by JJB_iOS on 2021/8/12.
//

#import <Foundation/Foundation.h>
#import "HLNetworkManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkHelper : NSObject

+ (__kindof NSURLSessionTask *)request:(HLRequestType)type
                                method:(NSString *)method
                            parameters:(id)parameters
                               isCache:(BOOL)isCache
                               success:(void(^)(BOOL success, NSString *msg, id data))success
                               failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
