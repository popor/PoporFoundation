//
//  SizePrefix.h
//  AppStore
//
//  Created by popor on 2017/7/6.
//  Copyright © 2017年 popor. All rights reserved.
//

#ifndef SizePrefix_h
#define SizePrefix_h

#pragma mark - iOS
#if TARGET_OS_IOS || TARGET_OS_WATCH
#define ScreenBounds   [[UIScreen mainScreen] bounds]
#define ScreenSize     [[UIScreen mainScreen] bounds].size

#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height


#pragma mark - macOX
#elif TARGET_OS_MAC


#endif




//static int CornerRadiusApp   = 12;
//
//static int CornerRadiusVideo = 8;
//static int CornerRadiusPano  = 8;

#endif /* SizePrefix_h */
