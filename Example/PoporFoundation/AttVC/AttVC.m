//
//  AttVC.m
//  PoporFoundation_Example
//
//  Created by popor on 2020/7/19.
//  Copyright © 2020 popor. All rights reserved.
//

#import "AttVC.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "NSString+pAtt.h"

@interface AttVC ()



@end

@implementation AttVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //[self testAttFormdata];
    [self testTfAttFormdata];
}

- (void)testLAttFormdata {
    UILabel * oneL = ({
        UILabel * oneL = [UILabel new];
        oneL.frame               = CGRectMake(20, 100, 300, 44);
        oneL.backgroundColor     = [UIColor brownColor]; // ios8 之前
        oneL.font                = [UIFont systemFontOfSize:15];
        oneL.textColor           = [UIColor blackColor];
        oneL.layer.masksToBounds = YES; // ios8 之后 lableLayer 问题
        oneL.numberOfLines       = 1;
        
        oneL.layer.cornerRadius  = 5;
        oneL.layer.borderColor   = [UIColor lightGrayColor].CGColor;
        oneL.layer.borderWidth   = 1;
        oneL.clipsToBounds       = YES;
        
        [self.view addSubview:oneL];
        oneL;
    });
    
    //NSMutableAttributedString * att = [NSMutableAttributedString separateMoneyText:@"12345678901" bigGap:10 smallGap:0 separateNumber:unit];
    NSMutableAttributedString * att = [NSMutableAttributedString separateText:@"12345678901" bigGap:10 smallGap:0 separateNumberArray:@[@2, @6, @10]];
    
    oneL.attributedText = att;
    
}

- (void)testTfAttFormdata {
    UITextField * oneTF = ({
        UITextField * tf = [UITextField new];
        tf.frame              = CGRectMake(20, 160, 300, 44);
        tf.backgroundColor    = [UIColor clearColor];
        tf.font               = [UIFont systemFontOfSize:15];
        tf.textColor          = [UIColor darkGrayColor];
        
        tf.layer.cornerRadius = 5;
        tf.layer.borderColor  = [UIColor lightGrayColor].CGColor;
        tf.layer.borderWidth  = 1;
        tf.clipsToBounds      = YES;
        
        tf.placeholder        = @"手机号码";
        tf.text               = @"";
        
        tf.keyboardType       = UIKeyboardTypePhonePad;
        
        [self.view addSubview:tf];
        tf;
    });
    
    @weakify(oneTF);
    [oneTF.rac_textSignal subscribeNext:^(id x) {
        @strongify(oneTF);
        
        NSMutableAttributedString * att = [NSMutableAttributedString separateText:x bigGap:10 smallGap:0 separateNumberArray:@[@2, @6, @10]];
        
        oneTF.attributedText = att;
    }];
    
    //    [[oneTF.rac_textSignal filter:^BOOL(NSString * _Nullable value) {
    //        if (value.length > 11) {
    //            return NO;
    //        } else {
    //            return YES;
    //        }
    //    }] subscribeNext:^(NSString * _Nullable x) {
    //
    //    }] ;
    
}

@end
