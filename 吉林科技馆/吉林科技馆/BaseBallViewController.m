//
//  BaseBallViewController.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/25.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "BaseBallViewController.h"

@interface BaseBallViewController ()
@property (nonatomic,copy) NSString *titleStr;
@end

@implementation BaseBallViewController

-(instancetype)initWithIndex:(NSInteger)index title:(NSString *)title{
    
    self =[super init];
    if (self) {
        _titleStr =title;
    }
    return self;

}
- (void)viewDidLoad {
    [super viewDidLoad];
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
