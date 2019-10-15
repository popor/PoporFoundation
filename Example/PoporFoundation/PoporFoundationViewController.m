//
//  PoporFoundationViewController.m
//  PoporFoundation
//
//  Created by popor on 06/15/2018.
//  Copyright (c) 2018 popor. All rights reserved.
//

#import "PoporFoundationViewController.h"

#import "PoporFoundation.h"

@interface PoporFoundationViewController ()

@end

@implementation PoporFoundationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    NSArray * array = @[@"1", @"2"];
    
    NSLog(@"jsonString : %@", [array toJSONString]);
    
    UILabel * oneL = ({
        UILabel * l = [UILabel new];
        l.frame              = CGRectMake(0, 100, 100, 44);
        l.backgroundColor    = [UIColor clearColor];
        l.font               = [UIFont systemFontOfSize:15];
        l.textColor          = [UIColor darkGrayColor];
        
        l.numberOfLines      = 1;
        
        l.layer.cornerRadius = 5;
        l.layer.borderColor  = [UIColor lightGrayColor].CGColor;
        l.layer.borderWidth  = 1;
        l.clipsToBounds      = YES;
        
        [self.view addSubview:l];
        l;
    });
    NSMutableAttributedString * att = [NSMutableAttributedString new];
    [att addString:@"12" font:[UIFont systemFontOfSize:14] color:@"0000FF".toColor];
    
    oneL.attributedText = att;
}

@end
