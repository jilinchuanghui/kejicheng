//
//  newsTableViewCell.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/24.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "newsTableViewCell.h"

@implementation newsTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }
    return self;

}

-(void)createView{
    UIImageView *imageView =[[UIImageView alloc] initWithFrame:CGRectMake(5, 5, ScreenWidth/3, ScreenWidth/5)];
    imageView.backgroundColor =[UIColor blueColor];
    [self.contentView addSubview:imageView];
    
    UILabel *titleL =[[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame)+3, CGRectGetMinY(imageView.frame), ScaleWidth6(400), ScaleHeight6(50))];
    titleL.numberOfLines =0;
    titleL.backgroundColor =[UIColor brownColor];
    [self.contentView addSubview:titleL];
    

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
