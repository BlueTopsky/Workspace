//
//  ViewController.m
//  MyApp1
//
//  Created by Topsky on 2017/10/17.
//  Copyright © 2017年 Topsky. All rights reserved.
//

#import "ViewController.h"
#import <Test2.m>
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton new];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"Tap" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickTapBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@50);
        make.height.equalTo(@30);
    }];
}

- (void)clickTapBtn {
    [Test2 logTest2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
