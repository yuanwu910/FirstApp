//
//  ViewController.m
//  firstApp
//
//  Created by yuan.wu on 8/3/16.
//  Copyright © 2016 yuan.wu. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()


@end

@implementation ViewController
//hahaha
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc]init];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [label setText:@"Hello world! \nby yuan.wu"];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setFont:[UIFont systemFontOfSize:20]];
    [label setTextColor:[UIColor whiteColor]];
    [label setNumberOfLines:0];
    [label setFrame:CGRectMake(65, 30, 250, 80)];
    [label setBackgroundColor:[UIColor colorWithRed:187.0/255 green:248.0/255 blue:230.0/255 alpha:0.8]];
    [self.view addSubview:label];
    
    UILabel *label2 = [[UILabel alloc] init];
    [label2 setText: @"Work as a bee\n&\n  Live as a butterfly."];
    [label2 setTextAlignment:NSTextAlignmentCenter];
    [label2 setNumberOfLines:0];
    [label2 setTextColor:[UIColor blackColor]];
    [label2 setFont:[UIFont fontWithName:@"Zapfino" size:14]];
    [label2 setFrame:CGRectMake(160, 80, 200, 300)];
    [self.view addSubview:label2];
    
    
    //NSLog(@"%lf %lf",self.view.frame.size.width,self.view.frame.size.height);
    UIImageView *imageView2 = [[UIImageView alloc] init];
    
    [imageView2 setImage:[UIImage imageNamed:@"2.pic_hd.jpg"]];
    CGFloat times = 0.2;
    [imageView2 setFrame:CGRectMake(16, 140, 814*times, 961*times)];
    [self.view addSubview:imageView2];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView setImage:[UIImage imageNamed:@"28.pic_hd.jpg"]];
    CGFloat times2 = 0.07;
    [imageView setFrame:CGRectMake(16, 350, 4878*times2, 3545*times2)];
    [self.view addSubview:imageView];
    
    
    UIButton *button = [[UIButton alloc] init];
    [button setFrame:CGRectMake(100, 610, 180, 30)];
    [button setTitle:@"Click to start" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor colorWithRed:187.0/255 green:248.0/255 blue:230.0/255 alpha:0.8]];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}

-(void)buttonClicked:(UIButton*)sender
{
    NextViewController *vc = [[NextViewController alloc]init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
