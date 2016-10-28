//
//  ZZRequest.h
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "YTKRequest.h"

@interface ZZYTKRequest : YTKRequest
@property (nonatomic, assign) NSInteger cacheTimeInSeconds;

@property (nonatomic, copy) NSDictionary * requestHeaderFieldValueDictionary;
@property (nonatomic, assign) YTKRequestMethod zz_requestMethord;
@property (nonatomic, assign) YTKResponseSerializerType zz_responseSerializerType;

- (id)initWithURL:(NSString *)URLString
       parameters:(NSDictionary *)parameters;

@end
