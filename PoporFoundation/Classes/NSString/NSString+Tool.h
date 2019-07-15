//
//  NSString+Tool.h
//  Wanzi
//
//  Created by popor on 2016/12/28.
//  Copyright © 2016年 popor. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PrefixOs.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Tool)

#pragma mark - 判断空字符串
+ (BOOL)isNullToString:(NSString * _Nullable)string;

#pragma mark - 正则部分
+ (NSString *)replaceString:(NSString * _Nonnull)theOriginString withREG:(NSString * _Nonnull)theRegString withNewString:(NSString * _Nonnull)theNewString;

+ (NSString *)cleanString:(NSString * _Nonnull)theOriginString withREG:(NSString * _Nonnull)theRegString;
+ (NSString *)stringWithReg:(NSString * _Nonnull)theOriginString withREG:(NSString * _Nonnull)theRegString;

- (NSString *)replaceWithREG:(NSString * _Nonnull)reg newString:(NSString * _Nonnull)theNewString;

- (NSString *)cleanWithREG:(NSString * _Nonnull)reg;
- (NSString *)stringWithREG:(NSString * _Nonnull)reg;

#pragma mark - 10-16转换
+ (NSString *)stringToHexWithInt:(int)theNumber;
+ (NSString *)stringToDecimalWithString:(NSString * _Nonnull)theNumber;

- (NSDictionary *)toDic;

#pragma mark [获取 一个GUID]
+ (NSString *)getUUID;

#pragma mark 空格URL
- (NSString *)toUrlEncode;

- (NSString *)toUtf8Encode;

- (NSString *)toChinaPhoneString;
- (BOOL)isPhoneNum;

- (NSData *)toData;

- (NSInteger)countOccurencesOfString:(NSString * _Nonnull)searchString;

- (COLOR_CLASS *)toColor;

@end

NS_ASSUME_NONNULL_END
