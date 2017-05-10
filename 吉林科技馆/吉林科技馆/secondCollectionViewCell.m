//
//  secondCollectionViewCell.m
//  基本框架搭建
//
//  Created by 常玉坤 on 2017/4/14.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "secondCollectionViewCell.h"

@interface  secondCollectionViewCell()
@property (nonatomic,strong) UIImageView *imageView;
@end

@implementation secondCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    if (self =[super initWithFrame:frame]) {
        _imageView =[[UIImageView alloc] init];
        _imageView.frame=CGRectMake(0, 0, (ScreenWidth -50)/3, ((ScreenWidth -50)/3));
        _imageView.backgroundColor =[UIColor blueColor];
        [self.contentView addSubview:_imageView];
        UILabel *hallL =[[UILabel alloc] initWithFrame:CGRectMake(0, (ScreenWidth -50)/3, (ScreenWidth -50)/3, ScaleWidth6(60))];
        hallL.backgroundColor =[UIColor brownColor];
        hallL.text =@"木星展厅";
        hallL.textAlignment =NSTextAlignmentCenter;
        [self.contentView addSubview:hallL];
    }

    return self;

}

@end
