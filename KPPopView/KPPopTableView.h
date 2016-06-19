//
//  KPPopTableView.h
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KPPopTableView : UITableView

/**
 *  选项数组
 */
@property (nonatomic,strong) NSArray *titleArray;

/**
 *  选项回调
 */
@property (nonatomic,copy) void (^cellClick)(NSInteger index);

@end
