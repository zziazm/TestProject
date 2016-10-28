//
//  ZZRequest.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ZZRequest.h"

@interface ZZRequest()
@property (nonatomic, copy) NSString * URLString;
@property (nonatomic, copy) NSDictionary * parameters;
@end

@implementation ZZRequest

- (id)initWithURL:(NSString *)URLString parameters:(NSDictionary *)parameters{
    if (self = [super init]) {
        _URLString = URLString;
        _parameters = parameters;
    }
    return self;
}

- (NSString *)requestUrl {
    return _URLString;
}

- (id)requestArgument {
    return _parameters;//@{ @"id": _userId };
}

- (NSInteger)cacheTimeInSeconds {
    return _cacheTimeInSeconds;
}

-(NSDictionary *)requestHeaderFieldValueDictionary{
    return _requestHeaderFieldValueDictionary;
}

@end
