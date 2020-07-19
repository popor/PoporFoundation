//
//  PoporFoundationViewController.m
//  PoporFoundation
//
//  Created by popor on 06/15/2018.
//  Copyright (c) 2018 popor. All rights reserved.
//

#import "PoporFoundationViewController.h"

#import "PoporFoundation.h"
#import "NSTimerVC.h"
#import "AttVC.h"

@interface PoporFoundationViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView * infoTV;

@end

@implementation PoporFoundationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"PoporFoudation";
    
    self.infoTV = [self addTVs];
    //[self stringEvent];
}

- (void)addL {
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

- (void)blockEvent {
    
}

- (void)stringEvent {
    NSString * str = @"aaaabbbb";
    
    NSLog(@"substringToIndex    %@", [str substringToIndex:3]);
    NSLog(@"substringFromIndex  %@", [str substringFromIndex:3]);
    NSLog(@"substringWithRange  %@", [str substringWithRange:(NSRange){4, 3}]);
}

#pragma mark - UITableView
- (UITableView *)addTVs {
    UITableView * oneTV = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    oneTV.delegate   = self;
    oneTV.dataSource = self;
    
    oneTV.allowsMultipleSelectionDuringEditing = YES;
    oneTV.directionalLockEnabled = YES;
    
    oneTV.estimatedRowHeight           = 0;
    oneTV.estimatedSectionHeaderHeight = 0;
    oneTV.estimatedSectionFooterHeight = 0;
    
    [self.view addSubview:oneTV];
    
    return oneTV;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * CellID = @"CellID";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellID];
        //cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    switch (indexPath.row) {
        case 0: {
            cell.textLabel.text = @"NSTimer";
            break;
        }
        case 1: {
            cell.textLabel.text = @"NSMutableAttributedString";
            break;
        }
        default:
            break;
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0: {
            [self.navigationController pushViewController:[NSTimerVC new] animated:YES];
            break;
        }
        case 1: {
            [self.navigationController pushViewController:[AttVC new] animated:YES];
            break;
        }
        default:
            break;
    }
    
}

@end
