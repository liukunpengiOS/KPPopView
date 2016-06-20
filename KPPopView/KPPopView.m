//
//  KPPopView.m
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "KPPopView.h"
#import "ContentView.h"
#import "Animation.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
@interface KPPopView ()

@property (nonatomic,strong) ContentView *contentView;
@end

@implementation KPPopView

+ (instancetype)sharePop{
    static id popView;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        
        popView = [[[self class] alloc] init];
    });
    return popView;
}

- (void)initMaskView {
    [super initMaskView];
}

- (void)showMaskView {
    [super showMaskView];
}

- (void)hiddenMaskView {
    [super hiddenMaskView];
    [[Animation animation] hiddenAnimation:_contentView];
}

#pragma mark - 弹出popView
- (void)show:(NSArray*)array index:(clickIndex)index {
    
    [self initMaskView];
    [self showMaskView];
    self.index = index;
    [self contentView:array];
    _contentView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.0001, 0.0001);
    [self.window insertSubview:_contentView aboveSubview:self.maskView];
    [[Animation animation] showAnimation:_contentView];
}

#pragma mark - 配置popView元素
- (UIView*)contentView:(NSArray*)array {

    __weak typeof(self)wself = self;
     CGFloat height = array.count * 45 + 9;
    _contentView = [[ContentView alloc]initWithFrame:CGRectMake(WIDTH - 105, 17, 150, height)];
    _contentView.array = array;
    [self.window insertSubview:_contentView aboveSubview:self.maskView];
    _contentView.clickIndex = ^(NSInteger index) {
        [wself clean];
        if (wself.index) {
            wself.index(index);
        }
    };
    return _contentView;
}

- (void)clean {
    
    [self hiddenMaskView];
}

@end
