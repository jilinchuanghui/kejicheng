//
//  headerTableViewCell.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/19.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "headerTableViewCell.h"

@implementation headerTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }

    return self;
}

-(void)createView
{
    self.headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(ScaleWidth6(20), ScaleWidth6(15), ScaleWidth6(100), ScaleWidth6(100))];
    [self.headerImage.layer setCornerRadius:5];
    [self.headerImage.layer setBorderWidth:1];
    self.headerImage.backgroundColor =[UIColor whiteColor];
    [self.contentView addSubview:self.headerImage];
    
    self.titleL =[[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.headerImage.frame)+ScaleWidth6(15), self.contentView.frame.size.height - ScaleWidth6(25), ScaleWidth6(100), ScaleWidth6(25))];
    self.titleL.text =@"登录";
    [self.contentView addSubview:self.titleL];

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
