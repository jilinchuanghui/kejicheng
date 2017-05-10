//
//  secondViewController.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/17.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "secondViewController.h"
#import "SegmentViewController.h"
#import "BaseBallViewController.h"

static CGFloat const ButtonHeight = 50;

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title =@"展厅";
    self.view.backgroundColor =[UIColor whiteColor];
    [self createView];
}

-(void)createView{
    
    SegmentViewController *segmentVC =[[SegmentViewController alloc] init];
    NSArray *titleArr =@[@"一号展厅",@"二号展厅",@"三号展厅",@"四号展厅",@"五号展厅",@"六号展厅",@"七号展厅"];
    segmentVC.titleArray =titleArr;
    NSMutableArray *controlArr =[NSMutableArray new];
    for (int i=0; i<titleArr.count; i++) {
        BaseBallViewController *baseBallVC =[[BaseBallViewController alloc] initWithIndex:i title:titleArr[i]];
        [controlArr addObject:baseBallVC];
    }
    segmentVC.titleSelectedColor = [UIColor blackColor];
    segmentVC.subViewControllers = controlArr;
    segmentVC.buttonWidth = 80;
    segmentVC.buttonHeight = ButtonHeight;
    segmentVC.headViewBackgroundColor =[UIColor grayColor];
    segmentVC.bottomLineColor =[UIColor blueColor];
    [segmentVC initSegment];
    [segmentVC addParentController:self];


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
