//
//  AppDelegate.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/17.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftSlideViewController.h"
#import "FirstViewController.h"
#import "secondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "LeftSortsViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

//123
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor =[UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    NSMutableDictionary *dic =[[NSMutableDictionary alloc] init];
    dic[NSForegroundColorAttributeName] =[UIColor whiteColor];
    NSMutableDictionary *selectDic =[NSMutableDictionary new];
    selectDic[NSForegroundColorAttributeName] =[UIColor redColor];
    
    FirstViewController *firstVC =[[FirstViewController alloc] init];
    firstVC.tabBarItem.title =@"首页";
    firstVC.tabBarItem.image = [[UIImage imageNamed:@"首页icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    firstVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"首页icon-1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [firstVC.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [firstVC.tabBarItem setTitleTextAttributes:selectDic forState:UIControlStateSelected];
    _nav1 = [[UINavigationController alloc]initWithRootViewController:firstVC];
    _nav1.navigationBar.tintColor = [UIColor whiteColor];
    _nav1.navigationBar.barTintColor =[UIColor blueColor];
    
    secondViewController *secondVC =[[secondViewController alloc] init];
    secondVC.tabBarItem.title =@"展厅";
    secondVC.tabBarItem.image =[[UIImage imageNamed:@"展厅icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    secondVC.tabBarItem.selectedImage =[[UIImage imageNamed:@"展厅icon-1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [secondVC.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [secondVC.tabBarItem setTitleTextAttributes:selectDic forState:UIControlStateSelected];
    UINavigationController *nav2 =[[UINavigationController alloc] initWithRootViewController:secondVC];
    
    ThirdViewController *thirdVC =[[ThirdViewController alloc] init];
    thirdVC.tabBarItem.title =@"预约";
    thirdVC.tabBarItem.image =[[UIImage imageNamed:@"预约icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    thirdVC.tabBarItem.selectedImage =[[UIImage imageNamed:@"预约icon-1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [thirdVC.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [thirdVC.tabBarItem setTitleTextAttributes:selectDic forState:UIControlStateSelected];
    UINavigationController *nav3 =[[UINavigationController alloc] initWithRootViewController:thirdVC];
    
    FourthViewController *fourthVC = [[FourthViewController alloc] init];
    fourthVC.tabBarItem.title =@"个人";
    fourthVC.tabBarItem.image =[[UIImage imageNamed:@"个人icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    fourthVC.tabBarItem.selectedImage =[[UIImage imageNamed:@"个人icon-1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [fourthVC.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [fourthVC.tabBarItem setTitleTextAttributes:selectDic forState:UIControlStateSelected];
    UINavigationController *nav4 =[[UINavigationController alloc] initWithRootViewController:fourthVC];
    
    UITabBarController *tabBarC =[[UITabBarController alloc] init];
    tabBarC.viewControllers =@[_nav1,nav2,nav3,nav4];
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 49)];
    backView.backgroundColor = [UIColor brownColor];
    [tabBarC.tabBar insertSubview:backView atIndex:0];
    tabBarC.tabBar.opaque = YES;
    
    LeftSortsViewController *LeftSortsVC =[[LeftSortsViewController alloc] init];
    self.LeftSlideVC =[[LeftSlideViewController alloc] initWithLeftView:LeftSortsVC andMainView:tabBarC];
    [self.LeftSlideVC setPanEnabled:NO];
    self.window.rootViewController = self.LeftSlideVC;
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
