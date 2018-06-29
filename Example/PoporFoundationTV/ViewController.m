//
//  ViewController.m
//  PoporFoundationTV
//
//  Created by apple on 2018/6/29.
//  Copyright © 2018年 popor. All rights reserved.
//

#import "ViewController.h"

#import <PoporFoundation/NSString+Tool.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString * url = @"http://www.baidu.com/王凯庆";
    NSLog(@"%@", url.toUrlEncode);
    NSLog(@"%@", url.toUtf8Encode);
    
    NSLog(@"%@", url.stringByRemovingPercentEncoding);
    
}




@end
