//
//  NSDecimalNumber+chain.h
//  RuntimeTest
//
//  Created by apple on 2018/6/28.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DecNumStr(string) [NSDecimalNumber decimalNumberWithString:string]

@interface NSDecimalNumber (chain)

- (NSDecimalNumber *(^)(NSDecimalNumber *))add;
- (NSDecimalNumber *(^)(NSDecimalNumber *))sub;
- (NSDecimalNumber *(^)(NSDecimalNumber *))mul;
- (NSDecimalNumber *(^)(NSDecimalNumber *))div;

- (NSDecimalNumber *(^)(id <NSDecimalNumberBehaviors>))behavior;

@end
