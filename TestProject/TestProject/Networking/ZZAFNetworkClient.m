//
//  ZZAFNetworkClient.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ZZAFNetworkClient.h"
//@"http://ag.chengyiapp.com/mobile/mainPageQuanNew?FansNo=-1&UserType=1"
static NSString * ZZAFNetClientBaseURL = @"http://ag.chengyiapp.com/mobile";
@implementation ZZAFNetworkClient
+ (ZZAFNetworkClient *)shareClient{
    static ZZAFNetworkClient * shareClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareClient = [[ZZAFNetworkClient alloc] initWithBaseURL:[NSURL URLWithString:ZZAFNetClientBaseURL]];
    });
    return shareClient;
}

- (void)GET:(NSString *)URLString
 paremeters:(id)parameters
completionHandle:(CompletionHandle)completionHandle{
    [self GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandle(nil, error);
    }];
}

- (void)POST:(NSString *)URLString
  parameters:(NSDictionary *)parameters
completionHandle:(CompletionHandle)completionHandle{
    [self POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandle(nil, error);
    }];
}

- (void)uploadImage:(UIImage *)image
          imageName:(NSString *)iamgeName
          URLString:(NSString *)URLString
         parameters:(NSDictionary *)parameters
   completionHandle:(CompletionHandle)completionHandle{
   [self POST:URLString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
//       [formData appendPartWithFileData:nil name:nil fileName:nil mimeType:nil];
   } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       completionHandle(responseObject, nil);
   } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       completionHandle(nil, error);
   }];
}



@end
