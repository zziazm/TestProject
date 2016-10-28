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

@interface ZZYTKNetClient()
@property (nonatomic, strong) YTKNetworkConfig * config;
@end


@implementation ZZYTKNetClient
+ (ZZYTKNetClient *)shareClient{
    static ZZYTKNetClient * shareClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareClient = [[ZZYTKNetClient alloc] init];
        shareClient.config = [YTKNetworkConfig sharedConfig];
        shareClient.config.baseUrl = ZZAppNetClientBaseURL;
    });
    return shareClient;
}

- (void)URLString:(NSString *)URLString
          methord:(YTKRequestMethod)method
 parameters:(NSDictionary *)parameters
cacheTimeInSeconds:(NSInteger)cacheTimeInSeconds
completionHandle:(void(^)(id responseObject, NSError * error))completionHandle{
    ZZRequest *request = [[ZZRequest alloc] initWithURL:URLString parameters:parameters];
    request.cacheTimeInSeconds = cacheTimeInSeconds;
    request.zz_requestMethord = method;
    [request startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        completionHandle(request.responseData, nil);
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        completionHandle(nil, request.error);
    }];
}


- (void)Post:(NSString *)URLString
  parameters:(NSDictionary *)parameters
 uploadImage:(UIImage *)image
        name:(NSString *)name
    fileName:(NSString *)fileName
    mineType:(NSString *)mineType
completionHandle:(void(^)(id responseObject, NSError * error))completionHandle{
    ZZRequest *request = [[ZZRequest alloc] initWithURL:URLString parameters:parameters];
    request.zz_requestMethord = YTKRequestMethodPOST;
    

}


@end
