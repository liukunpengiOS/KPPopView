//
//  ViewController.m
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "ViewController.h"
#import "KPPopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)leftItemDidTouch:(id)sender {
    
    NSArray *array = @[@"添加",@"移除"];
    [KPPOP show:array index:^(NSInteger index) {
        
        NSLog(@"%ld",(long)index);
    }];
    
}

- (IBAction)rightItemDidTouch:(id)sender {
    
    NSArray *array = @[@"添加成员",@"移除成员"];
    [KPPOP show:array index:^(NSInteger index) {
        
        NSLog(@"%ld",(long)index);
    }];
}

@end
