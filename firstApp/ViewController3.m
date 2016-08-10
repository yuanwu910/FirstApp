//
//  ViewController3.m
//  firstApp
//
//  Created by yuan.wu on 8/4/16.
//  Copyright © 2016 yuan.wu. All rights reserved.
//

#import "ViewController3.h"
#define kFirstComponent 0
#define kSubComponent 1

@interface ViewController3 ()<UIPickerViewDelegate, UIPickerViewDataSource>
@property (nonatomic,strong) UIPickerView *pickView;
@property(nonatomic,strong) NSArray *dataSource;
@property(nonatomic,strong) NSArray *pickerArray;
@property(nonatomic) NSUInteger currentIndex;
@end


@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _pickView = [[UIPickerView alloc]init];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [_pickView setDelegate:self];
    [_pickView setDataSource:self];
    [_pickView setBackgroundColor:[UIColor colorWithRed:241.0/255 green:242.0/255 blue:244.0/255 alpha:0.5]];
    [_pickView setFrame:CGRectMake(12, 450, 350, 200)];
    [self.view addSubview:_pickView];
    
    
    
    
    _dataSource = @[@[@"合肥",@"芜湖",@"马鞍山"],@[@"福州",@"厦门",@"泉州",@"漳州"],@[@"南京",@"盐城",@"苏州",@"扬州"]];
    _pickerArray = @[@"安徽",@"福建",@"江苏"];
}

#pragma mark UIPickViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //NSLog(@"NumberofCol: %zd", pickerView);
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
  
    if (component == 0) {
        return 3;
    }else
    {
        return [[_dataSource objectAtIndex:_currentIndex] count];
    
    }
    
}

-(NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
   
    if(component == 0){
        return [_pickerArray objectAtIndex:row];
    }else {
        return [[_dataSource objectAtIndex:_currentIndex] objectAtIndex:row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //NSLog(@"row:%zd component:%zd",row,component);
    if (component == 0) {
        _currentIndex = row;
        [pickerView reloadComponent:1];
    }
}


#pragma mark UIPickViewDelegate

//- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    //return _dataSource[component][row];
//    return [[_pickerArray objectAtIndex:component] objectAtIndex:row];
//}



- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if (component == 0) {
        return 180.00;
    } else
        return 90.00;
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
