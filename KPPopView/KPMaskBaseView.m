//
//  KPMaskBaseView.m
//  Drex
//
//  Created by kunpeng on 16/3/8.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "KPMaskBaseView.h"

#define WIDTH ([UIScreen mainScreen].bounds.size.width)
#define HEIGHT ([UIScreen mainScreen].bounds.size.height)
@implementation KPMaskBaseView

- (void)initMaskView {

    _window = [[UIApplication sharedApplication].windows firstObject];
    _window.backgroundColor = [UIColor clearColor];
    _maskView = [[UIView alloc]initWithFrame:_window.bounds];
    _maskView.alpha = 0;
    _maskView.backgroundColor = [UIColor blackColor];
    _gesture = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                       action:@selector(gestureEvent)];
    [_maskView addGestureRecognizer:_gesture];
}

- (void)showMaskView {
    
    [_window addSubview:_maskView];
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                         _maskView.alpha = 0.1;
    } completion:nil];
}

- (void)hiddenMaskView {
    
    [UIView animateWithDuration:0.2
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                         _maskView.alpha = 0;
    } completion:^(BOOL finished) {
        
            [_maskView removeFromSuperview];
    }];
}

- (void)gestureEvent {
    
    [self hiddenMaskView];
}

@end
