//
//  backTableViewCell.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/20.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "backTableViewCell.h"

@implementation backTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }

    return self;
}

-(void)createView{

    UILabel *backL =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScaleWidth6(50))];

    backL.textAlignment =NSTextAlignmentCenter;
    backL.text =@"退出登录";
    backL.textColor =[UIColor blackColor];
    [self.contentView addSubview:backL];
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
