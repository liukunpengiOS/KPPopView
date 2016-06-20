//
//  DR_Animation_Class.h
//  Drex
//
//  Created by kunpeng on 16/3/13.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  动画
 */
@interface Animation : NSObject

/**
 *  单例创建
 */
+ (instancetype)animation;

/**
 *  弹出动画
 */
- (void)showAnimation:(UIView*)view;

/**
 *  消失动画
 */
- (void)hiddenAnimation:(UIView*)view;

@end
