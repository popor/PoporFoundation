//
//  NSObject+assign.h
//  term
//
//  Created by apple on 2018/12/13.
//  Copyright © 2018 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (assign)

- (void)assignInt:(int)intValue string:(NSString * _Nullable)string;

// 假如string为空那么设置为 value, 只针对
- (void)assignNilString:(NSString * _Nullable)strValue;

- (void)assignIncreaseValue;

@end

NS_ASSUME_NONNULL_END
