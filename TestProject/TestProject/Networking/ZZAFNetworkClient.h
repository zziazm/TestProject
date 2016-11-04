//
//  ZZAFNetworkClient.h
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "AFHTTPSessionManager.h"
typedef void(^CompletionHandle)(id responseObject, NSError * error);

@interface ZZAFNetworkClient : AFHTTPSessionManager

+ (ZZAFNetworkClient *)shareClient;
- (void)GET:(NSString *)URLString
 paremeters:(id)parameters
completionHandle:(CompletionHandle)completionHandle;
- (void)POST:(NSString *)URLString
  parameters:(NSDictionary *)parameters
completionHandle:(CompletionHandle)completionHandle;

@end
