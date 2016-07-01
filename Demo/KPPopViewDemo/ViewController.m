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

- (IBAction)rightItemDidTouch:(UIBarButtonItem *)sender {
    
    NSArray *array = @[@"选项1",@"选项2",@"选项3",@"选项4",@"选项5",@"选项6"];
    [KPPOP show:array index:^(NSInteger index) {
        
        NSLog(@"%ld",(long)index);
    }];
}

@end
