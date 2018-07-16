//
//  ViewController.m
//  HSFTimeDownViewDemo
//
//  Created by 黄山锋 on 2018/7/16.
//  Copyright © 2018年 黄山锋. All rights reserved.
//

#import "ViewController.h"


/* 动画倒计时 */
#import "HSFTimeDownView.h"
#import "HSFTimeDownConfig.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    HSFTimeDownConfig *config = [[HSFTimeDownConfig alloc]init];
//    config.timeType = HSFTimeType_HOUR_MINUTE;
//    config.bgColor = [UIColor redColor];
//    config.fontColor = [UIColor blueColor];
//    config.fontSize = 19.f;
//    config.fontColor_placeholder = [UIColor orangeColor];
//    config.fontSize_placeholder = 10.f;
    HSFTimeDownView *timeLabel_hsf = [[HSFTimeDownView alloc] initWityFrame:CGRectMake(self.view.frame.size.width * .5 - 100, 500, 200, 20) config:config timeChange:^(NSInteger time) {
        NSLog(@"hsf===%ld",(long)time);
    } timeEnd:^{
        
    }];NSLog(@"hsf===倒计时结束");
    
    [self.view addSubview:timeLabel_hsf];
    timeLabel_hsf.center = self.view.center;
    
    [timeLabel_hsf setcurentTime:60 * 60 * 20 * 3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
