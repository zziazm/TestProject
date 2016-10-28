//
//  ZZRequest.h
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "YTKRequest.h"

@interface ZZRequest : YTKRequest
@property (nonatomic, assign) NSInteger cacheTimeInSeconds;
@property (nonatomic, copy) NSDictionary * requestHeaderFieldValueDictionary;
- (id)initWithURL:(NSString *)URLString
       parameters:(NSDictionary *)parameters;


@end
