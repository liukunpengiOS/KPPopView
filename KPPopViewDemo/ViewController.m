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

- (IBAction)leftItemDidTouch:(UIBarButtonItem *)sender {
    
    NSArray *array = @[@"添加",@"移除",@"低等等"];
    [KPPOP show:array index:^(NSInteger index) {
        
        NSLog(@"%ld",(long)index);
    }];
}

- (IBAction)rightItemDidTouch:(UIBarButtonItem *)sender {
    
    UIBarButtonItem *barItem = (UIBarButtonItem*)sender;
    
    NSArray *array = @[@"1",@"2",@"3",@"4",@"5",@"6"];
    [KPPOP show:array index:^(NSInteger index) {
        
        NSLog(@"%ld",(long)index);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
