//
//  bannerTableViewCell.m
//  基本框架搭建
//
//  Created by 常玉坤 on 2017/4/14.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "bannerTableViewCell.h"

@implementation bannerTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }

    return self;
}

-(void)createView{

    _bannerView =[[KDCycleBannerView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenWidth/2)];
    _bannerView.delegate =self;
    _bannerView.datasource =self;
    _bannerView.continuous =YES;
    _bannerView.autoPlayTimeInterval =3.0;
    _bannerView.pageControlHidden =NO;
    
    _headerImgsArr = [NSMutableArray array];
    for (int i =0; i<3; i++) {
        UIImage *image =[UIImage imageNamed:@"加载失败背景"];
        [_headerImgsArr addObject:image];
    }
    [self.contentView addSubview:_bannerView];
}

- (NSArray *)numberOfKDCycleBannerView:(KDCycleBannerView *)bannerView {
    
    return self.headerImgsArr;
}

- (UIViewContentMode)contentModeForImageIndex:(NSUInteger)index {
    return UIViewContentModeScaleAspectFill;
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
