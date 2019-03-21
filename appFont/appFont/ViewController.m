//
//  ViewController.m
//  appFont
//
//  Created by Yuanhai on 15/3/19.
//  Copyright © 2019年 Yuanhai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 从所有字体找到我们加入的’Digital-7Mono‘
    for (NSString *fontFamilyName in [UIFont familyNames]) {
        NSLog(@"familyNames = %@" , fontFamilyName);
        for (NSString *fontName in [UIFont fontNamesForFamilyName:fontFamilyName]) {
            NSLog(@"   %@", fontName);
        }
        NSLog(@"---------");
    }
    
    // 测试
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"abcdefghijklmnopqrstuvwxyz\n0123456789";
    label.font = [UIFont fontWithName:@"Digital-7Mono" size:20];
    label.numberOfLines = 0;
    label.center = self.view.center;
    [self.view addSubview:label];
}

@end
