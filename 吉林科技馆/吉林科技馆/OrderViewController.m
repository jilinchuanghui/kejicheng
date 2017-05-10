//
//  OrderViewController.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/19.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "OrderViewController.h"

@interface OrderViewController ()

@end

@implementation OrderViewController

-(void)viewWillAppear:(BOOL)animated{

    self.tabBarController.tabBar.hidden =YES;

}
-(void)viewWillDisappear:(BOOL)animated{

      self.tabBarController.tabBar.hidden =NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    // Do any additional setup after loading the view.
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
