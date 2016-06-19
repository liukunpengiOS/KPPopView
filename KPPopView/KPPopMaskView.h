//
//  KPPopView.h
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KPMaskView.h"

#define KPPOP [KPPopMaskView share]
typedef void(^firstIndexEvent)(void);
typedef void(^secondIndexEvent)(void);
@interface KPPopMaskView : KPMaskView

+ (instancetype)share;
@property (nonatomic,copy) firstIndexEvent firstIndexEvent;
@property (nonatomic,copy) secondIndexEvent secondIndexEvent;

/**
 *  选项数组
 */
@property (nonatomic,strong) NSArray *titleArray;

/**
 *  展示POPView
 *
 *  @param firstIndexEvent  按钮1事件
 *  @param secondIndexEvent 按钮2事件
 */
- (void)showPopView:(firstIndexEvent)firstIndexEvent
   secondIndexEvent:(secondIndexEvent)secondIndexEvent;

@end
