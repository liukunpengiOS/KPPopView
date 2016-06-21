# KPPopView

Just one line code to create a popView

<img src="./Screenshot.gif" width="200" alt="Screenshot" />

安装
---

使用 [CocoaPods](http://cocoapods.org)安装

    pod "KPPopView"
      
…or simply add KPopView.h/m into your project.
    
调用
---

```

 NSArray *array = @[@"选项1",@"选项2",@"选项3",@"选项4",@"选项5",@"选项6"];
    [KPPOP show:array index:^(NSInteger index) {
        
        NSLog(@"%ld",(long)index);
    }];

```


许可证
-------
MIT. See LICENSE.