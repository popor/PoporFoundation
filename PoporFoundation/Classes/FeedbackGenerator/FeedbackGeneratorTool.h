//
//  FeedbackGeneratorTool.h
//  hywj
//
//  Created by popor on 2020/12/23.
//  Copyright © 2020 popor. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#if TARGET_OS_MACCATALYST

@interface FeedbackGeneratorTool : NSObject @end

#else

#define FeedbackShakePhone  [FeedbackGeneratorTool shakePhone];

#define FeedbackShakeLight  [FeedbackGeneratorTool shakeLight];
#define FeedbackShakeMedium [FeedbackGeneratorTool shakeMedium];
#define FeedbackShakeHeavy  [FeedbackGeneratorTool shakeHeavy];

@interface FeedbackGeneratorTool : NSObject

@property (nonatomic        ) BOOL shakeEnable;
@property (nonatomic, strong) UISelectionFeedbackGenerator * _Nullable selectionFG API_AVAILABLE(ios(10.0));

+ (instancetype)share;

+ (void)shakePhone;

+ (void)shakeLight;
+ (void)shakeMedium;
+ (void)shakeHeavy;

// select fg 部分
+ (void)selectionFgPrepare;
+ (void)selectionFgChange;
+ (void)selectionFgEnd;

+ (BOOL)isDeviceSupportFeedback;

@end

#endif


NS_ASSUME_NONNULL_END
