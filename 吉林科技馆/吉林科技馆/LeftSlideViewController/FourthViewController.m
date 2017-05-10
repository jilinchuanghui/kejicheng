//
//  FourthViewController.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/17.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "FourthViewController.h"
#import "headerTableViewCell.h"
#import "walletTableViewCell.h"
#import "OrderViewController.h"
#import "backTableViewCell.h"
@interface FourthViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *arr;
@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title =@"个人";
    self.view.backgroundColor =[UIColor blueColor];
    [self createView];
    _arr =[NSArray arrayWithObjects:@"",@"我的订单",@"我的车位",@"我的存包",@"我的轨迹",@"常见问题",@"意见反馈" ,nil];
}

-(void)createView{
    _tableView =[[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    _tableView.delegate =self;
    _tableView.dataSource =self;
    _tableView.separatorStyle =UITableViewCellSeparatorStyleSingleLine;
    _tableView.sectionFooterHeight =ScaleWidth6(10);
    [self.view addSubview:_tableView];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 3;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    if (section ==0) {
        return 1;
    }else if (section ==1){
        return 7;
    }else{
        return 2;
    }

}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section ==0) {
    headerTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"headCell"];
        if (!cell) {
            cell =[[headerTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"headCell"];
        }
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        return cell;
    }else if (indexPath.section ==1){
        if (indexPath.row ==0) {
            walletTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"wallertCell"];
            if (!cell) {
                cell =[[walletTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"wallertCell"];
            }
            cell.selectionStyle =UITableViewCellSelectionStyleNone;
            return cell;
        }else{
            UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
            if (!cell) {
                cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            }
            cell.accessoryType =UITableViewCellAccessoryDisclosureIndicator;
            cell.textLabel.text =_arr[indexPath.row];
            cell.selectionStyle =UITableViewCellSelectionStyleNone;
            return cell;
        }
       
    }else{
    
        if (indexPath.row ==0) {
            UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell"];
            if (!cell) {
                cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
            }
            cell.textLabel.text =@"修改密码";
            cell.accessoryType =UITableViewCellAccessoryDisclosureIndicator;
            cell.selectionStyle =UITableViewCellSelectionStyleNone;
            return cell;
        }else{
            backTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"backCell"];
            if (!cell) {
                cell =[[backTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"backCell"];
            }
            return cell;
        }
       
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section ==0) {
        return 80;
    }else if (indexPath.section ==1){
        if (indexPath.row ==0) {
            return ScaleWidth6(150);
        }else{
            return 44;
        }
    }else{
    
        return 44;
    }

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 1) {
        if (indexPath.row ==1) {
            OrderViewController *orderVC =[[OrderViewController alloc] init];
            [self.navigationController pushViewController:orderVC animated:NO];
        }
    }


}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{

    return ScaleWidth6(10);

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
