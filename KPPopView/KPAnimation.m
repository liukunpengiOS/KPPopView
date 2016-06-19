//
//  DR_Animation_Class.m
//  Drex
//
//  Created by kunpeng on 16/3/13.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "KPAnimation.h"

@implementation KPAnimation

+ (instancetype)animation {
    static id animation;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        
        animation = [[[self class] alloc] init];
    });
    return animation;
}

- (void)showTranfromAnimation:(UIView*)animationView {
    
    [UIView animateWithDuration:0.5
                          delay:0.0
         usingSpringWithDamping:0.68
          initialSpringVelocity:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                            animationView.alpha = 1;
                            animationView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
                        } completion:nil];
}

- (void)hiddedTranformAnimation:(UIView*)animationView {
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                            
                            animationView.alpha = 0;
                            animationView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.0001, 0.0001);
    } completion:nil];
}

@end
