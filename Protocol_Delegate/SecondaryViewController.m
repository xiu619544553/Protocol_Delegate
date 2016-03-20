//
//  SecondaryViewController.m
//  Protocol_Delegate
//
//  Created by 本农记 on 16/3/20.
//  Copyright © 2016年 韩秀辉. All rights reserved.
//

#import "SecondaryViewController.h"
#import "ViewController.h"

@interface SecondaryViewController ()

@end

@implementation SecondaryViewController

#pragma mark - View lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:1.000 green:0.279 blue:0.506 alpha:1.000];
}

/** 
 * SecondaryViewController
 */
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    /**
     *  @brief 判断是否设置了代理并且代理是否响应了代理方法
     */
    if (self.delegate && [self.delegate respondsToSelector:@selector(controller:text:)]) {
        [self.delegate controller:self text:@"传值"];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
