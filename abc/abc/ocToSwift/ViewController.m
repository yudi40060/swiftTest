//
//  ViewController.m
//  abc
//
//  Created by 于迪 on 15/12/7.
//  Copyright © 2015年 yudi. All rights reserved.
//

#import "ViewController.h"

#define kWidth ([UIScreen mainScreen].bounds.size.width)
#define kHeight ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.设置导航栏
    self.navigationItem.title = @"首页";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(kWidth/2 - 40, kHeight/2 - 15, 80, 30);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"Go" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(goSwift) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    

}

- (void)goSwift{
    NSLog(@"Go");
    swiftVC *vc = [[swiftVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
