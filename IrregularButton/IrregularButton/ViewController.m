//
//  ViewController.m
//  IrregularButton
//
//  Created by charles on 2017/11/30.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "ViewController.h"
#import "CircleButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(10, 100, 210, 210)];
    [self.view addSubview:bgView];
    
    CircleButton *btn = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 0, 100, 100);
    [btn setTitle:@"12313" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setCircleType:CircleTypeTopLeft];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn];
    
    CircleButton *btn1 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn1.frame = CGRectMake(105, 0, 100, 100);
    [btn1 setTitle:@"12313" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setBackgroundColor:[UIColor redColor]];
    [btn1 setCircleType:CircleTypeTopRight];
    [btn1 addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn1];
    
    CircleButton *btn2 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(0, 105, 100, 100);
    [btn2 setTitle:@"12313" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor redColor]];
    [btn2 setCircleType:CircleTypeBottomLeft];
    [btn2 addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn2];
    
    CircleButton *btn3 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn3.frame = CGRectMake(105, 105, 100, 100);
    [btn3 setTitle:@"12313" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 setBackgroundColor:[UIColor redColor]];
    [btn3 setCircleType:CircleTypeBottomRight];
    [btn3 addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn3];
    
    
    CircleButton *btn4 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn4.bounds = CGRectMake(0, 0, 100, 100);
    btn4.center = bgView.center;
    [btn4 setTitle:@"12313" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn4 setBackgroundColor:[UIColor blueColor]];
    [btn4 setCircleType:CircleTypeAllCircle];
    [btn4 addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    
}

-(void)btnClick{
    NSLog(@"点击了区域内,区域外我是无法响应的哟");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

