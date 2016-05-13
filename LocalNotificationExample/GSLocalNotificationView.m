//
//  ViewController.m
//  LocalNotificationExample
//
//  Created by Gowrie Sammandhamoorthy on 9/16/15.
//  Copyright (c) 2015 Gowrie Sammandhamoorthy. All rights reserved.
//

#import "GSLocalNotificationView.h"

@interface GSLocalNotificationView ()

@end

@implementation GSLocalNotificationView

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    
    UILocalNotification* localNotification = [UILocalNotification new];
    
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
