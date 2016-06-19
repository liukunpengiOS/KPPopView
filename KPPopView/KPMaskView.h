//
//  KPMaskBaseView.h
//  Drex
//
//  Created by kunpeng on 16/3/8.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KPMaskView : UIView

/**
 *  创建UIWindow实例
 */
@property (nonatomic,strong) UIWindow *window;

/**
 *  创建一个黑色半透明遮罩视图
 */
@property (nonatomic,strong) UIView *maskView;

/**
 *  创建一个点击遮罩的手势
 */
@property (nonatomic,strong) UITapGestureRecognizer *gesture;

/**
 *  初始化遮罩视图
 */
- (void)initMaskView;

/**
 *  呈现遮罩视图
 */
- (void)showMaskView;

/**
 *  退出遮罩视图
 */
- (void)hiddenMaskView;

@end
