# KPPopView

Just one line code to create a popView

Installation
------------

Use [CocoaPods](http://cocoapods.org)

    pod "KPPopView"
    
Usage
-----

```

 NSArray *array = @[@"选项1",@"选项2",@"选项3",@"选项4",@"选项5",@"选项6"];
    [KPPOP show:array index:^(NSInteger index) {
        
        NSLog(@"%ld",(long)index);
    }];

```


License
-------
MIT. See LICENSE.