//
//  ViewController.m
//  Protocol_Delegate
//
//  Created by 本农记 on 16/3/20.
//  Copyright © 2016年 韩秀辉. All rights reserved.
//

#import "ViewController.h"
#import "ExecuteProtocol.h"
#import "Object.h"
#import "SecondaryViewController.h"

// 遵守代理
@interface ViewController () <SecondaryViewControllerDelegate>
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

#pragma mark - View lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.665 green:1.000 blue:0.506 alpha:1.000];
    [self.view addSubview:self.label];
    [self getHouse:[[Object alloc] init]];
}

#pragma mark - SecondaryViewControllerDelegate Methods
- (void)controller:(SecondaryViewController *)controller text:(NSString *)text {
    NSLog(@"%@ %@", controller, text);
}


- (void)getHouse:(id <ExecuteProtocol>)obj {
    self.label.text = [NSString stringWithFormat:@"%lu", [obj qualified]];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SecondaryViewController *secVC = [[SecondaryViewController alloc] init];
    // 指定代理
    secVC.delegate = self;
    [self.navigationController pushViewController:secVC animated:YES];
}

#pragma mark - getter Methods
- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.backgroundColor = [UIColor redColor];
    }
    return _label;
}
@end
