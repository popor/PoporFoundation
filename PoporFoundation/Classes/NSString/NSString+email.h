//
//  NSString+email.h
//  WanziTG
//
//  Created by popor on 2017/1/9.
//  Copyright © 2017年 popor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static NSString * const EmailRegStr = @"([a-z0-9A-Z_]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}";

@interface NSString (email)

#pragma mark - 判断邮箱格式是否正确
+ (BOOL)isValidateEmail:(NSString * _Nullable)email;

@end

NS_ASSUME_NONNULL_END
