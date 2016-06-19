//
//  DR_Animation_Class.h
//  Drex
//
//  Created by kunpeng on 16/3/13.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KPAnimation : NSObject

+ (instancetype)animation;

/**
 *  出现动画
 *
 *  @param animationView 需要动画的视图
 */
- (void)showTranfromAnimation:(UIView*)animationView;

/**
 *  消失动画
 *
 *  @param animationView 需要动画的视图
 */
- (void)hiddedTranformAnimation:(UIView*)animationView;

@end
