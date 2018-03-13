//
//  AppDelegate.m
//  MVVM+Module
//
//  Created by 邱弘宇 on 2018/3/5.
//  Copyright © 2018年 邱弘宇. All rights reserved.
//
#import <objc/runtime.h>
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *arr1 = [NSArray arrayWithObjects:@"bbb",[@"ccc" mutableCopy],nil];
    NSArray *arr2 = [NSArray arrayWithObjects:@"ddd",@"eee", nil];
    NSMutableArray *mArr1 = [NSMutableArray arrayWithObjects:@"fff",[@"ggg" mutableCopy], nil];
    NSMutableArray *mArr2 = [NSMutableArray arrayWithObjects:@"hhh",@"iii", nil];
    NSArray *arr1Copy = [arr1 copy];
    NSArray *arr2Copy = [arr2 copy];
    NSArray *mArr1Copy = [mArr1 copy];
    NSArray *mArr2Copy = [mArr2 copy];
    NSArray *arr1MCopy = [arr1 mutableCopy];
    NSArray *arr2MCopy = [arr2 mutableCopy];
    NSArray *mArr1MCopy = [mArr1 mutableCopy];
    NSArray *mArr2MCopy = [mArr2 mutableCopy];
    
    Class _NSArrayClass = objc_getClass("NSArray");
    unsigned int count;
    unsigned int *a = &count;
    unsigned int *c = {10,20,30};
    objc_property_t *propertys = class_copyPropertyList(_NSArrayClass, &count);
    for (int i = 0; i < count; i++) {
        objc_property_t property = propertys[i];
        fprintf(stdout, "%s %s\n", property_getName(property), property_getAttributes(property));
    }
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
