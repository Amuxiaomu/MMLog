//
//  ViewController.m
//  MMLog
//
//  Created by Amuxiaomu on 2017/10/12.
//  Copyright © 2017年 Amuxiaomu. All rights reserved.
//

#import "ViewController.h"

#import "MMPrintLog.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton * button;
@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - setup methods

- (void)setupUI {
    
    [self.view addSubview:self.button];
}
#pragma mark - requests

#pragma mark - delegate&dataSource

#pragma mark - router

#pragma mark - event & response

- (void)buttonAction:(id)sender {
    
    MMPrintLog * printLog = [[MMPrintLog alloc] init];
    [printLog MMPrint:@"我打印一下试试"];
}
#pragma mark - private methods

#pragma mark - getter & setter

- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc] init];
        [_button setTitle:@"点击测试MMLog打印数据" forState:UIControlStateNormal];
        [_button sizeToFit];
        _button.center = self.view.center;
        [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}
@end
