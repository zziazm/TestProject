//
//  ViewController.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ViewController.h"
#import "ZZAFNetworkClient.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * s = @"mainPageQuanNew?FansNo=-1&UserType=1";

    [[ZZAFNetworkClient shareClient] GET:@"mainPageQuanNew" paremeters:@{@"FansNo":@"-1", @"UserType":@"1"} completionHandle:^(id responseObject, NSError *error) {
        NSLog(@"%@", responseObject);
    }];
    [[ZZAFNetworkClient shareClient] GET1:@"mainPageQuanNew" paremeters:@{@"FansNo":@"-1", @"UserType":@"1"} completionHandle:^(id responseObject, NSError *error) {
        NSLog(@"%@", responseObject);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
