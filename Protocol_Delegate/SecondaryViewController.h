//
//  SecondaryViewController.h
//  Protocol_Delegate
//
//  Created by 本农记 on 16/3/20.
//  Copyright © 2016年 韩秀辉. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondaryViewController;

/**
 *  @brief 协议方法(类名+Delegate)
 */
@protocol SecondaryViewControllerDelegate <NSObject>
@required
/**
 *  @brief 传值
 *
 *  @param controller 当前控制器
 *  @param text       文本值
 */
- (void)controller:(SecondaryViewController *)controller text:(NSString *)text;
@end

@interface SecondaryViewController : UIViewController
/**
 *  @brief 代理用weak修饰(防止内存泄露)
 */
@property (nonatomic, weak) id <SecondaryViewControllerDelegate> delegate;
@end
