//
//  ViewController.m
//  RMRuntime
//
//  Created by Raymon on 16/5/20.
//  Copyright © 2016年 Raymon. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+touch.h"

@interface ViewController ()
{
    NSInteger _clickNum;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 100, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"连续点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.timeInterVal = 3;
}

- (void)buttonAction
{
    _clickNum += 1;
    NSLog(@"点击了%ld下",(long)_clickNum);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
