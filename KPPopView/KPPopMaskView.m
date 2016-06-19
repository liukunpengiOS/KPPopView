//
//  KPPopView.m
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "KPPopMaskView.h"
#import "KPPopView.h"
#import "KPAnimation.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
@interface KPPopMaskView ()

@property (nonatomic,strong) KPPopView *popView;
@end

@implementation KPPopMaskView

+ (instancetype)share{
    static id share;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        
        share = [[[self class] alloc] init];
    });
    return share;
}

- (void)setTitleArray:(NSArray *)titleArray {
    _titleArray = titleArray;
}

- (void)initMaskView {
    [super initMaskView];
    [self createPopTableView];
}

- (void)showMaskView {
    [super showMaskView];
    _popView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.0001, 0.0001);
    [self.window insertSubview:_popView aboveSubview:self.maskView];
    [[KPAnimation animation] showTranfromAnimation:_popView];
}

- (void)showPopView:(firstIndexEvent)firstIndexEvent
   secondIndexEvent:(secondIndexEvent)secondIndexEvent {
    
    [self initMaskView];
    [self showMaskView];
    self.firstIndexEvent = firstIndexEvent;
    self.secondIndexEvent = secondIndexEvent;
}

- (UIView*)createPopTableView {

    if (_popView == nil) {
        
        __weak typeof(self)wself = self;
        _popView = [[KPPopView alloc]initWithFrame:CGRectMake(WIDTH - 105, 17, 150, 98)];
        _popView.titleArray = _titleArray;
        [self.window insertSubview:_popView aboveSubview:self.maskView];
        
        _popView.cellClick = ^(NSInteger index) {
            [wself hiddenMaskView];
            if (index == 0) {
                if (wself.firstIndexEvent) {
                    wself.firstIndexEvent();
                }
            }else {
                if (wself.secondIndexEvent) {
                    wself.secondIndexEvent();
                }
            }
        };
    }
    _popView.titleArray = _titleArray;
    return _popView;
}

- (void)hiddenMaskView {
    [super hiddenMaskView];
    
    [[KPAnimation animation] hiddedTranformAnimation:_popView];
}
@end
