//
//  ZZAFNetworkClient.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ZZAFNetworkClient.h"
//@"http://ag.chengyiapp.com/mobile/mainPageQuanNew?FansNo=-1&UserType=1"
//static NSString * ZZAFNetClientBaseURL = @"http://ag.chengyiapp.com/mobile";
static NSString * ZZAFNetClientBaseURL = @"http://114.255.201.228:86/videoif";

@implementation ZZAFNetworkClient
+ (ZZAFNetworkClient *)shareClient{
    static ZZAFNetworkClient * shareClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        

        shareClient = [ZZAFNetworkClient manager];//[[ZZAFNetworkClient alloc] initWithBaseURL:[NSURL URLWithString:ZZAFNetClientBaseURL]];
        NSLog(@"%@", shareClient.responseSerializer.acceptableContentTypes);
        shareClient.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"text/json", @"application/json", @"text/javascript",nil];//[NSSet setWithObject:@"text/html"];
        NSLog(@"%@", shareClient.responseSerializer.acceptableContentTypes);

    });
    return shareClient; 
}

- (void)GET:(NSString *)URLString
 paremeters:(id)parameters
completionHandle:(CompletionHandle)completionHandle{
//    self.responseSerializer = [AFHTTPResponseSerializer serializer];
//    self.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [self GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        task.response.URL;
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
