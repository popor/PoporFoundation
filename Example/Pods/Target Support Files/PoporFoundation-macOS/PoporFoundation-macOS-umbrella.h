#ifdef __OBJC__
#import <Cocoa/Cocoa.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "PoporFoundation.h"
#import "NSObject+WMSafeKVO.h"
#import "NSArray+jsonDic.h"
#import "NSArray+Swizzling.h"
#import "NSMutableArray+chain.h"
#import "NSMutableArray+Swizzling.h"
#import "NSAssistant.h"
#import "NSData+dic.h"
#import "NSDate+Tool.h"
#import "NSDecimalNumber+chain.h"
#import "NSDecimalNumber+Swizzling.h"
#import "NSDictionary+Swizzling.h"
#import "NSDictionary+tool.h"
#import "NSFileManager+Tool.h"
#import "NSObject+performSelector.h"
#import "NSObject+Swizzling.h"
#import "NSString+email.h"
#import "NSString+format.h"
#import "NSString+IDCard.h"
#import "NSString+MD5.h"
#import "NSString+Size.h"
#import "NSString+Tool.h"
#import "NSURL+Swizzling.h"
#import "PrefixBlock.h"
#import "PrefixColor.h"
#import "PrefixFont.h"
#import "PrefixFun.h"
#import "PrefixSize.h"
#import "PrefixOs.h"
#import "ScreenCommonSize.h"

FOUNDATION_EXPORT double PoporFoundationVersionNumber;
FOUNDATION_EXPORT const unsigned char PoporFoundationVersionString[];

