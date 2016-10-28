//
//  ZZAFNetworkClient.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ZZAFNetworkClient.h"

static NSString * ZZAFNetClientBaseURL = @"";

@implementation ZZAFNetworkClient
+ (ZZAFNetworkClient *)shareClient{
    static ZZAFNetworkClient * shareClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareClient = [[ZZAFNetworkClient alloc] initWithBaseURL:[NSURL URLWithString:ZZAFNetClientBaseURL]];
    });
    return shareClient;
}
@end
