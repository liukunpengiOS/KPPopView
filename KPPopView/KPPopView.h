//
//  KPPopView.h
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MaskView.h"

#define KPPOP [KPPopView sharePop]
typedef void (^clickIndex)(NSInteger index);
@interface KPPopView : MaskView

/**
 *  创建单例
 */
+ (instancetype)sharePop;

/**
 *  选项点击索引
 */
@property (nonatomic,copy)clickIndex index;

/**
 *  弹出PopView
 *
 *  @param array 选项数组
 *  @param index 选项索引
 */
- (void)show:(NSArray*)array index:(clickIndex)index;

@end
