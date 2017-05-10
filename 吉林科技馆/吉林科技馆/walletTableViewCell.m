//
//  walletTableViewCell.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/19.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "walletTableViewCell.h"

@implementation walletTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }
    return self;
}

-(void)createView{
    
    self.backgroundV =[[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScaleWidth6(150))];
    self.backgroundV.backgroundColor =[UIColor grayColor];
    [self.contentView addSubview:self.backgroundV];
    
    self.accountL =[[UILabel alloc] initWithFrame:CGRectMake(ScaleWidth6(10), ScaleWidth6(10), ScaleWidth6(200), ScaleWidth6(50))];
    self.accountL.text =@"账户余额（元）";
    [self.accountL setFont:[UIFont systemFontOfSize:13]];
    [self.backgroundV addSubview:self.accountL];
    
    UIView *lineView =[[UIView alloc] initWithFrame:CGRectMake(ScreenWidth/2, 0, 1,ScaleWidth6(150))];
    lineView.backgroundColor =[UIColor blackColor];
    [self.backgroundV addSubview:lineView];
    
    UILabel *consumeL =[[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(lineView.frame)+ScaleWidth6(5), CGRectGetMinY(self.accountL.frame), ScaleWidth6(200), ScaleWidth6(50))];
    consumeL.text =@"累计消费（元）";
    [consumeL setFont:[UIFont systemFontOfSize:13]];
    [self.backgroundV addSubview:consumeL];
    
    self.accountMoneyL =[[UILabel alloc] initWithFrame:CGRectMake(0, self.backgroundV.frame.size.height -ScaleWidth6(100), ScreenWidth/2, ScaleWidth6(100))];
    self.accountMoneyL.text =@"100.00";
    self.accountMoneyL.textAlignment =NSTextAlignmentCenter;
    [self.backgroundV addSubview:self.accountMoneyL];
    
    self.consumeMoneyL =[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth/2, CGRectGetMinY(self.accountMoneyL.frame), ScreenWidth/2, ScaleWidth6(100))];
    self.consumeMoneyL.text =@"100.00";
    self.consumeMoneyL.textAlignment =NSTextAlignmentCenter;
    [self.backgroundV addSubview:self.consumeMoneyL];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
