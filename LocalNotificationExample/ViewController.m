//
//  ViewController.m
//  LocalNotificationExample
//
//  Created by Gowrie Sammandhamoorthy on 9/16/15.
//  Copyright (c) 2015 Gowrie Sammandhamoorthy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    UILocalNotification* localNotification = [[UILocalNotification alloc]init];
    
    if (localNotification) {
        localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
        localNotification.alertBody = @"Hi this is my first local notification!!!";
        //localNotification.timeZone = [NSTimeZone defaultTimeZone];
    }
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];

    
}

- (IBAction)stopButtonPreesed:(UIButton *)sender {
    exit(0);
}
@end
