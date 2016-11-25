//
//  NSString+ZZAdd.h
//  TestProject
//
//  Created by zm on 2016/11/25.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZZAdd)
/**
 Returns a lowercase NSString for md5 hash.
 */
- (NSString *)md5String;

/**
 Returns an NSString for base64 encoded.
 */
- (NSString *)base64EncodedString;

/**
 Returns an NSString from base64 encoded string.
 @param base64EncodedString The encoded string.
 */
+ (NSString *)stringWithBase64EncodedString:(NSString *)base64EncodedString;

/**
 URL encode a string in utf-8.
 @return the encoded string.
 */
- (NSString *)stringByURLEncode;

/**
 URL decode a string in utf-8.
 @return the decoded string.
 */
- (NSString *)stringByURLDecode;

- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;
- (CGFloat)heightForFont:(UIFont *)font width:(CGFloat)width;
- (NSString *)stringByTrim;
- (NSNumber *)numberValue;
- (NSData *)dataValue;
@end
