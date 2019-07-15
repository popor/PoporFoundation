//
//  NSString+IDCard.h
//  linRunShengPi
//
//  Created by popor on 2018/1/5.
//  Copyright © 2018年 popor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface NSString (IDCard)

- (BOOL)isChinaIdCardNoLength;
- (BOOL)isChinaIdCardNo;

@end

NS_ASSUME_NONNULL_END
