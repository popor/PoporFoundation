//
//  ViewController.m
//  PoporFoundationMac
//
//  Created by apple on 2018/6/29.
//  Copyright © 2018年 popor. All rights reserved.
//

#import "ViewController.h"

#import <PoporFoundation/NSString+format.h>
#import <PoporFoundation/NSString+Tool.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * title;
    NSArray * array = @[@"1", @"2", title, @"4"];
    NSLog(@"array: %@", array);
    
    
    
    NSTextField * oneTF = ({
        NSTextField * l = [NSTextField new];
        l.frame              = CGRectMake(60, 100, 100, 44);
        l.allowsEditingTextAttributes = YES;
        l.layer.cornerRadius = 5;
        l.layer.borderColor  = [NSColor lightGrayColor].CGColor;
        l.layer.borderWidth  = 1;
        //l.clipsToBounds      = YES;
        
        [self.view addSubview:l];
        l;
    });
    NSMutableAttributedString * att = [NSMutableAttributedString new];
    [att addString:@"12" font:[NSFont systemFontOfSize:14] color:@"00FF00".toColor];
    
    oneTF.attributedStringValue = att;
}

@end
