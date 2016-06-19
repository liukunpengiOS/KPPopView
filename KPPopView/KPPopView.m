//
//  KPBgView.m
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "KPPopView.h"
#import "KPPopTableView.h"

@interface KPPopView ()

@property (nonatomic,strong)KPPopTableView *popTableView;
@end

@implementation KPPopView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.alpha = 0;
        self.layer.cornerRadius = 3.0f;
        self.layer.masksToBounds = YES;
        self.layer.anchorPoint = CGPointMake(0.85,0);
        self.backgroundColor = [UIColor clearColor];
        [self createElements];
    }
    return self;
}

- (void)setTitleArray:(NSArray *)titleArray {
    
    _popTableView.titleArray = titleArray;
}

- (void)createElements {
    
    __weak typeof(self)wself = self;
    _popTableView = [[KPPopTableView alloc]initWithFrame:CGRectMake(0, 10, CGRectGetWidth(self.frame),
                                                                    CGRectGetHeight(self.frame) - 10)];
    [self addSubview:_popTableView];
    _popTableView.cellClick = ^(NSInteger index) {
        if (wself.cellClick) {
            wself.cellClick(index);
        }
    };
}

#pragma mark 绘制三角形
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGFloat location = CGRectGetWidth(self.frame) - 20;
    CGContextMoveToPoint(context,location,0);
    CGContextAddLineToPoint(context,location - 10 ,10);
    CGContextAddLineToPoint(context,location + 10,10);
    CGContextAddLineToPoint(context,location,0);
    CGContextClosePath(context);
    [[UIColor darkGrayColor] setFill];
    [[UIColor darkGrayColor] setStroke];
    CGContextDrawPath(context,kCGPathFillStroke);//绘制路径path
}

@end
