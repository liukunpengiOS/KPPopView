//
//  KPPopTableView.m
//  KPPopView
//
//  Created by kunpeng on 16/6/14.
//  Copyright © 2016年 liukunpeng. All rights reserved.
//

#import "KPPopTableView.h"

static NSString *const kCell = @"cell";
@interface KPPopTableView ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation KPPopTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        
        [self configTableView];
    }
    return self;
}

#pragma mark - 配置TableView
- (void)configTableView {
   
    self.delegate = self;
    self.dataSource = self;
    self.scrollEnabled = NO;
    self.layer.cornerRadius = 3.0f;
    self.layer.masksToBounds = YES;
    self.rowHeight = 45;
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:kCell];
    
    if ([self respondsToSelector:@selector(setSeparatorInset:)]) {
        [self setSeparatorInset:UIEdgeInsetsMake(0, 15, 0, 15)];
    }
    
    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsMake(0, 15, 0, 15)];
    }
}

- (void)setTitleArray:(NSArray *)titleArray {
    
    _titleArray = titleArray;
    [self reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCell forIndexPath:indexPath];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor darkGrayColor];
    cell.textLabel.text = _titleArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (self.cellClick) {
        self.cellClick(indexPath.row);
    }
}

@end
