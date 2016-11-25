//
//  NSData+ZZAdd.h
//  TestProject
//
//  Created by zm on 2016/11/25.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (ZZAdd)
- (NSString *)md5String;
- (NSString *)base64EncodedString;
+ (NSData *)dataWithBase64EncodedString:(NSString *)base64EncodedString;
- (id)jsonValueDecoded;
- (NSData *)gzipInflate;
- (NSData *)gzipDeflate;
@end
