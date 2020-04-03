//
//  NSTimer+pSafe.h
//  PoporFoundation
//
//  Created by popor on 2018/4/21.
//  Copyright © 2018年 popor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 增加NSTimer, 从<<Effective Objective-C 2.0>> 第52条 截取
 
 */
@interface NSTimer (pSafe)

+ (NSTimer *)safe_scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                           block:(void(^)(void))block
                                         repeats:(BOOL)repeats;

@end

NS_ASSUME_NONNULL_END
