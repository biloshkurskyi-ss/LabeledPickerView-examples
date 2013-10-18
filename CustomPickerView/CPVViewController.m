//
//  CPVViewController.m
//  CustomPickerView
//
//  Created by Administrator on 10/18/13.
//  Copyright (c) 2013 Administrator. All rights reserved.
//

#import "CPVViewController.h"
#import "LabeledPickerView.h"

@interface CPVViewController ()
{
    
}

@end

@implementation CPVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    LabeledPickerView* pickerView = [[LabeledPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 300)];
    
    [pickerView addLabel:@"Start" forComponent:0 forLongestString:@"Start"];
    [pickerView addLabel:@"End" forComponent:1 forLongestString:@"End"];
    
    [self.view addSubview:pickerView];
    pickerView.delegate = self;
    pickerView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPickerViewDataSource/Delegate methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 100;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSDateComponents* comps = [[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:[NSDate date]];
    
    return [NSString stringWithFormat:@"%i", comps.year - row];
}


@end
