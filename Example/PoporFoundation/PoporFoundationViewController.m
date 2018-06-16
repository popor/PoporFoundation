//
//  PoporFoundationViewController.m
//  PoporFoundation
//
//  Created by popor on 06/15/2018.
//  Copyright (c) 2018 popor. All rights reserved.
//

#import "PoporFoundationViewController.h"

//#import <PoporFoundation/PoporFoundation.h>
//@import PoporFoundation;
#import <PoporFoundation/NSArray+jsonDic.h>

@interface PoporFoundationViewController ()

@end

@implementation PoporFoundationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray * array = @[@"1", @"2"];
    
    NSLog(@"jsonString : %@", [array toJSONString]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
