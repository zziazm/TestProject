//
//  AppDelegate+ZZAdd.m
//  TestProject
//
//  Created by zm on 2016/11/9.
//  Copyright © 2016年 zmMac. All rights reserved.
//

#import "AppDelegate+ZZAdd.h"
#import <UserNotifications/UserNotifications.h>
@implementation AppDelegate (ZZAdd)
- (void)registerRemoteNotification{
    UIApplication *application = [UIApplication sharedApplication];
    application.applicationIconBadgeNumber = 0;
    

    if (NSClassFromString(@"UNUserNotificationCenter")) {
        [[UNUserNotificationCenter currentNotificationCenter] requestAuthorizationWithOptions:UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert completionHandler:^(BOOL granted, NSError *error) {
            if (granted) {
#if !TARGET_IPHONE_SIMULATOR
                [application registerForRemoteNotifications];
#endif
            }
        }];
        return;
    }

}




@end
