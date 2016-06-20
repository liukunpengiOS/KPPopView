//
//  KPBgView.m
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "ContentView.h"

#define WIDTH  self.frame.size.width
#define HEIGHT  self.frame.size.height
static NSString *const kCell = @"cell";
@interface ContentView ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;
@end

@implementation ContentView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setup];
        [self createTableView];
    }
    return self;
}

- (void)setup {
    
    self.alpha = 0;
    self.layer.cornerRadius = 3.0f;
    self.layer.masksToBounds = YES;
    CGRect oldFrame = self.frame;
    self.layer.anchorPoint = CGPointMake(0.85,0);
    self.frame = oldFrame;
    self.backgroundColor = [UIColor clearColor];
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

#pragma mark - 创建列表
- (void)createTableView {
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 10, WIDTH,HEIGHT - 10)];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCell];
    [self addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self config:_tableView];
}

#pragma mark - 配置列表
- (void)config:(UITableView*)tableView {

    tableView.scrollEnabled = NO;
    tableView.layer.cornerRadius = self.layer.cornerRadius;
    tableView.layer.masksToBounds = YES;
    tableView.rowHeight = 45;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCell forIndexPath:indexPath];
    cell.textLabel.text = _array[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor darkGrayColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (self.clickIndex) {
        self.clickIndex(indexPath.row);
    }
}

@end
