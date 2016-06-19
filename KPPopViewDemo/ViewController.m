//
//  ViewController.m
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "ViewController.h"
#import "KPPopMaskView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)rightItemDidTouch:(id)sender {
    
    KPPOP.titleArray = @[@"添加成员",@"移除成员"];
    [KPPOP showPopView:^{
        
        NSLog(@"添加成员");
        } secondIndexEvent:^{
            
            NSLog(@"移除成员");
    }];
}

@end
