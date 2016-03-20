//
//  ExecuteProtocol.h
//  Protocol_Delegate
//
//  Created by 本农记 on 16/3/20.
//  Copyright © 2016年 韩秀辉. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 协议 */
@protocol ExecuteProtocol <NSObject>

@required
/**
 *  @brief 必须实现的某个方法
 */
- (NSUInteger)qualified;


@optional
/**
 *  @brief 可选的方法
 */
- (void)doSomething;

@end
