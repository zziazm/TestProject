//
//  ZZAppNetClient.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ZZYTKNetClient.h"
#import "ZZRequest.h"
static NSString * const ZZAppNetClientBaseURL = @"";

@implementation ZZYTKNetClient
+ (ZZYTKNetClient *)shareClient{
    static ZZYTKNetClient * shareClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareClient = [[ZZYTKNetClient alloc] init];
    });
    return shareClient;
}

+ (void)URLString:(NSString *)URLString
          methord:(YTKRequestMethod)method
 parameters:(NSDictionary *)parameters
cacheTimeInSeconds:(NSInteger)cacheTimeInSeconds
completionHandle:(void(^)(id responseObject, NSError * error))completionHandle{
    ZZRequest *request = [[ZZRequest alloc] initWithURL:URLString parameters:parameters];
    request.cacheTimeInSeconds = cacheTimeInSeconds;
    request.requestMethod = method;
    [request startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        completionHandle(request.responseData, nil);
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        completionHandle(nil, request.error);
    }];
}




@end
