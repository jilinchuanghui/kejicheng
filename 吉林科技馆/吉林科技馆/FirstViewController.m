//
//  FirstViewController.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/17.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "bannerTableViewCell.h"
#import "firstTableViewCell.h"
#import "secondTableViewCell.h"
#import "newsTableViewCell.h"
@interface FirstViewController ()<UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.title =@"首页";
    self.view.backgroundColor =[UIColor whiteColor];
    UIButton *menuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn.frame = CGRectMake(0, 0, 20, 18);
    [menuBtn setBackgroundImage:[UIImage imageNamed:@"menu"] forState:UIControlStateNormal];
    [menuBtn addTarget:self action:@selector(openOrCloseLeftList) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:menuBtn];
    //扫一扫按钮
    UIButton *scarnBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    scarnBtn.frame =CGRectMake(0, 0, 25, 18);
    scarnBtn.backgroundColor =[UIColor blueColor];
    //搜索框
    UISearchBar *serchbar =[[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, ScaleWidth6(550), 18)];
    serchbar.delegate =self;
    [serchbar setTintColor:[UIColor grayColor]];
    [serchbar setPlaceholder:@"搜索"];
    UIBarButtonItem *scarnItem =[[UIBarButtonItem alloc] initWithCustomView:scarnBtn];
    UIBarButtonItem *serchbarItem =[[UIBarButtonItem alloc] initWithCustomView:serchbar];
    scarnItem.width =-10;
    self.navigationItem.rightBarButtonItems =@[scarnItem,serchbarItem];
    [self createView];
    [self performSelector:@selector(addNetworkReachabilityManager) withObject:nil afterDelay:0.3f];

}

-(void)createView{
    self.tableView =[[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    self.tableView.delegate =self;
    self.tableView.dataSource =self;
    self.tableView.separatorStyle =UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableView];
}

#pragma mark -----组数-----
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 4;

}
#pragma mark -----每组的行数-----
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    if (section ==3) {
        return 3;
    }else return 1;

}

#pragma mark -----cell-----
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==0) {
        bannerTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"bannerCell"];
        if (!cell) {
            cell =[[bannerTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"bannerCell"];
        }
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        return cell;
    }else if(indexPath.section ==1){
    
        firstTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"firstCell"];
        if (!cell) {
            cell =[[firstTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"firstCell"];
        }
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        return cell;
    }else if(indexPath.section ==2){
        secondTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"secondCell"];
        if (!cell) {
            cell =[[secondTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"secondCell"];
        }
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        return cell;
    
    }else{
    
        newsTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"newsCell"];
        if (!cell) {
            cell =[[newsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"newsCell"];
        }
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        return cell;
    }

}

#pragma mark -----行高-------
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.section ==0) {
        return ScreenWidth/2;
    }else if(indexPath.section ==1){
        return (ScreenWidth - 5*5)/4+ScaleWidth6(20)+12;
    }else if(indexPath.section ==2){
        return (ScreenWidth -50)/3+15+ScaleWidth6(60)+30;
    }else {
        return ScreenWidth/5 +5;
    }

}

#pragma mark -----头视图------
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 3) {
        UIView *backView =[[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 30)];
//        backView.backgroundColor =[UIColor blueColor];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame =CGRectMake(ScreenWidth - 100, 0, 100 ,30);
        [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        btn.titleLabel.font =[UIFont systemFontOfSize:ScaleWidth6(32)];
        btn.titleLabel.textAlignment =NSTextAlignmentRight;
        btn.titleLabel.adjustsFontSizeToFitWidth =YES;
        [btn setTitle:@"更多" forState:UIControlStateNormal];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, ScreenWidth, 30)];
        label.text = @"新闻资讯";
        label.backgroundColor = [UIColor whiteColor];
        label.textColor = [UIColor darkGrayColor];
        label.font = [UIFont systemFontOfSize:ScaleWidth6(32)];
        
        UIView *lineView =[[UIView alloc] initWithFrame:CGRectMake(5, 0, 3, 30)];
        lineView.backgroundColor  =[UIColor redColor];
        [backView addSubview:lineView];
        [backView addSubview:label];
        [backView addSubview:btn];
        return backView;
    }

    return nil;
}

#pragma mark -----头高-----
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    if (section == 1) {
        return ScaleWidth6(5);
    }else if (section ==2){
        return ScaleWidth6(10);
    
    }else if (section ==3){
        return 30;
    }
    else{
        return 0;
    }

}
#pragma mark -----尾高-----
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section == 2) {
        return ScaleWidth6(10);
    }else return 0;

}

- (void) openOrCloseLeftList
{
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.LeftSlideVC.closed)
    {
        [tempAppDelegate.LeftSlideVC openLeftView];
    }
    else
    {
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }
}

#pragma mark ----------检测网络----------
- (void)addNetworkReachabilityManager
{
    // 1.获得网络监控的管理者
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    // 2.设置网络状态改变后的处理
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        // 当网络状态改变了, 就会调用这个block
        if (status <= 0) {
            
            [MBProgressHUD showError:@"网络连接失败\n点击重新加载"];
        }else{
            //有网情况下进行网络请求
//            [self netWorking];
        }
        
    }];
    // 3.开始监控
    [manager startMonitoring];
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
