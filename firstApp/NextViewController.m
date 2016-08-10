//
//  NextViewController.m
//  firstApp
//
//  Created by yuan.wu on 8/3/16.
//  Copyright © 2016 yuan.wu. All rights reserved.
//

#import "NextViewController.h"
#import "ViewController.h"
#import "ViewController3.h"
#import <MediaPlayer/MediaPlayer.h>

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self layoutUI];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[UILabel alloc] init];
    [label setText:@"To Be Young"];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setTextColor:[UIColor whiteColor]];
    [label setFrame:CGRectMake(40, 30, 300, 40)];
//    [label set]
    [label setBackgroundColor:[UIColor colorWithRed:187.0/255 green:248.0/255 blue:230.0/255 alpha:0.8]];
    [self.view addSubview:label];
    
    
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *moviePath = [bundle pathForResource:@"4" ofType:@"mp4"];
    NSURL *movieURL = [NSURL fileURLWithPath:moviePath];
    _moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    _moviePlayerController.controlStyle = MPMovieControlStyleEmbedded;
   // _moviePlayerController.view.transform = CGAffineTransformConcat(_moviePlayerController.view.transform, CGAffineTransformMakeRotation(M_PI_2));
    //UIWindow *backgroundWindow = [[UIApplication sharedApplication] keyWindow];
    [_moviePlayerController.view setFrame:CGRectMake(12, 90, 350, 500)];
    [self.view addSubview:_moviePlayerController.view];
    [_moviePlayerController play];
   
    
    
        UIButton *button = [[UIButton alloc] init];
        [button setFrame:CGRectMake(30, 610, 140, 30)];
        [button setTitle:@"Previous" forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor colorWithRed:187.0/255 green:248.0/255 blue:230.0/255 alpha:0.8]];
        [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    
    UIButton *button2 = [[UIButton alloc] init];
    [button2 setFrame:CGRectMake(196, 610, 140, 30)];
    [button2 setTitle:@"Next" forState:UIControlStateNormal];
    [button2 setBackgroundColor:[UIColor colorWithRed:187.0/255 green:248.0/255 blue:230.0/255 alpha:0.8]];
    [button2 addTarget:self action:@selector(buttonClicked2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [_moviePlayerController stop];

}

//-(void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    NSLog(@"hahaha");
//    [_moviePlayerController play];
//}@


-(void)buttonClicked:(UIButton*)sender
{
    ViewController *vc = [[ViewController alloc]init];
    [self presentViewController:vc animated:YES completion:^{
    }];
//    [self dismissViewControllerAnimated:YES completion:^{
//        
//        }];
    
}

-(void) buttonClicked2:(UIButton*) sender
{
    ViewController3 *vc = [[ViewController3 alloc]init];
    [self presentViewController:vc animated:YES completion:^{
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
