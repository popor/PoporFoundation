//
//  NSTimerVC.m
//  PoporFoundation_Example
//
//  Created by 王凯庆 on 2020/4/3.
//  Copyright © 2020 popor. All rights reserved.
//

#import "NSTimerVC.h"
#import "NSTimer+pSafe.h"

@interface NSTimerVC ()
@property (nonatomic, strong) NSTimer * testTimer;
@end

@implementation NSTimerVC

- (void)dealloc {
    NSLog(@"%s", __func__);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //NSLog(@"%@", self); // 此行会崩溃,因为该vc已经释放了
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"NSTimerVC";
    self.view.backgroundColor = [UIColor whiteColor];
    
    __weak typeof(self) weakSelf = self;
    // 自动释放的timer
    self.testTimer = [NSTimer safe_scheduledTimerWithTimeInterval:1 block:^{
        [weakSelf nslogText];
    } repeats:YES];
    
    // 原生的,退出页面之后,仍然持有.
    //self.testTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(nslogText) userInfo:nil repeats:YES];
}


- (void)nslogText {
    NSLog(@"time fire");
}

@end
