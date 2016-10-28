//
//  ZZRequest.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ZZYTKRequest.h"

@interface ZZYTKRequest()
@property (nonatomic, copy) NSString * URLString;
@property (nonatomic, copy) NSDictionary * parameters;
@end

@implementation ZZYTKRequest

- (id)initWithURL:(NSString *)URLString parameters:(NSDictionary *)parameters{
    if (self = [super init]) {
        _URLString = URLString;
        _parameters = parameters;
        _zz_responseSerializerType = YTKResponseSerializerTypeHTTP;
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

- (YTKRequestMethod)requestMethod{
    return _zz_requestMethord;
}
- (YTKResponseSerializerType)responseSerializerType {
    return _zz_responseSerializerType;
}
@end
