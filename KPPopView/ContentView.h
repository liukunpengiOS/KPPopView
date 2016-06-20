//
//  KPBgView.h
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentView : UIView

/**
 *  选项数组
 */
@property (nonatomic,strong) NSArray *array;

/**
 *  选项回调
 */
@property (nonatomic,copy) void (^clickIndex)(NSInteger index);

@end
