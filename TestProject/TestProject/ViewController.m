//
//  ViewController.m
//  TestProject
//
//  Created by zm on 2016/10/27.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "ViewController.h"
#import "ZZAFNetworkClient.h"
#import "UIImageView+WebCache.h"
#import "YYText.h"
#import "UIView+ZZAdd.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString * s = @"mainPageQuanNew?FansNo=-1&UserType=1";
//    
//    [[ZZAFNetworkClient shareClient] GET:@"mainPageQuanNew" paremeters:@{@"FansNo":@"-1", @"UserType":@"1"} completionHandle:^(id responseObject, NSError *error) {
//        NSLog(@"%@", responseObject);
//    }];
    
//    [[ZZAFNetworkClient shareClient] GET:@"https://www.baidu.com" paremeters:nil completionHandle:^(id responseObject, NSError *error) {
//        if (error) {
//            
//        }else{
//            NSLog(@"%@", responseObject);
//        }
//    }];
//    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:imageView];
    imageView.backgroundColor = [UIColor redColor];
//    [imageView sd_setImageWithURL:[NSURL URLWithString:@"https://camo.githubusercontent.com/37a920f6ba4fe1fd2149ee8264a5f17cada7f1c3/68747470733a2f2f7261772e6769746875622e636f6d2f69626972656d652f59594b69742f6d61737465722f44656d6f2f536e617073686f74732f776569626f5f636f6d706f73652e706e67"] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//        if (error) {
//            
//        }
//        
//    }];
//    [imageView sd_setImageWithURL:[NSURL URLWithString:@"https://camo.githubusercontent.com/37a920f6ba4fe1fd2149ee8264a5f17cada7f1c3/68747470733a2f2f7261772e6769746875622e636f6d2f69626972656d652f59594b69742f6d61737465722f44656d6f2f536e617073686f74732f776569626f5f636f6d706f73652e706e67"] placeholderImage:nil options:SDWebImageAllowInvalidSSLCertificates completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//        if (error) {
//            
//        }else{
//            
//        }
//    }];
//    

//    [[ZZAFNetworkClient shareClient] GET1:@"mainPageQuanNew" paremeters:@{@"FansNo":@"-1", @"UserType":@"1"} completionHandle:^(id responseObject, NSError *error) {
//        NSLog(@"%@", responseObject);
//    }];
    // Do any additional setup after loading the view, typically from a nib.
    
    YYLabel * label = [[YYLabel alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
    [self.view addSubview:label];
//    label.left = 100;
//    label.top = 200;
//    label.height = 30;
//    label.width = 100;
    label.text = @"fafafasfa";
    UIView
//    dispatch_async(dispatch_get_main_queue(), ^{
//        NSLog(@"1111");
//    });
//    NSLog(@"222222");
//    for (int i = 0; i < 1000; i++) {
//        NSLog(@"%d", i);
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
