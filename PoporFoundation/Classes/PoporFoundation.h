//
//  PoporFoundationExtension.h
//  PoporFoundationExtension
//
//  Created by popor on 2018/6/13.
//  Copyright © 2018年 popor. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for PoporFoundationExtension.
FOUNDATION_EXPORT double PoporFoundationExtensionVersionNumber;

//! Project version string for PoporFoundationExtension.
FOUNDATION_EXPORT const unsigned char PoporFoundationExtensionVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <PoporFoundationExtension/PublicHeader.h>


#import "NSObject+WMSafeKVO.h"

// - KVO
#import "NSObject+WMSafeKVO.h"

// - NSArray
#import "NSArray+jsonDic.h"
#import "NSArray+Swizzling.h"
#import "NSMutableArray+Swizzling.h"
#import "NSMutableArray+chain.h"

// - NSAssistant
#import "NSAssistant.h"

// -NSData
#import "NSData+dic.h"

// -NSDate
#import "NSDate+Tool.h"

// -NSDecimalNumber
#import "NSDecimalNumber+chain.h"
#import "NSDecimalNumber+Swizzling.h"

// -NSDictionary
#import "NSDictionary+tool.h"
#import "NSDictionary+Swizzling.h"

// -NSFileManager
#import "NSFileManager+Tool.h"

// -NSObject
#import "NSObject+assign.h"
#import "NSObject+performSelector.h"

// -NSString
#import "NSString+email.h"
#import "NSString+format.h"
#import "NSString+IDCard.h"
#import "NSString+MD5.h"
#import "NSString+Size.h"
#import "NSString+Tool.h"

// -NSURL
#import "NSURL+Swizzling.h"

// -PrefixCore
#import "PrefixColor.h"
#import "PrefixFont.h"
#import "PrefixSize.h"
#import "PrefixFun.h"
#import "PrefixBlock.h"

// -PrefixOs
#import "PrefixOs.h"
