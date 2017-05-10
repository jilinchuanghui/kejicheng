//
//  firstTableViewCell.m
//  基本框架搭建
//
//  Created by 常玉坤 on 2017/4/12.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "firstTableViewCell.h"

@implementation firstTableViewCell



-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }


    return self;
}

-(void)createView{
//    _titleL =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 10)];
//    _titleL.textAlignment =NSTextAlignmentCenter;
//    _titleL.textColor = [UIColor blackColor];
//    [self.contentView addSubview:_titleL];
    NSArray *arr =[NSArray arrayWithObjects:@"展馆介绍",@"在线预约",@"参观指南",@"新闻资讯", nil];;
    
    NSInteger width = (ScreenWidth - 5*5)/4;
    NSInteger height = (ScreenWidth - 5*5)/4;
    NSInteger count =4;
    for (int i =0; i<count; i++) {
        _functionBtn =[UIButton buttonWithType:UIButtonTypeCustom];
        [_functionBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        _functionBtn.tag =i;
        _functionL =[[UILabel alloc] init];
        _functionBtn.frame = CGRectMake(5 + i%4*(width+5), i/4*(height+5), width, height);
        _functionBtn.backgroundColor =[UIColor blueColor];
        [self.contentView addSubview:_functionBtn];
        _functionL.frame =CGRectMake(_functionBtn.frame.origin.x, CGRectGetMaxY(_functionBtn.frame)+8, width, ScaleWidth6(20));
        _functionL.textAlignment =NSTextAlignmentCenter;
        _functionL.text =arr[i];
        _functionL.font =[UIFont systemFontOfSize:ScaleWidth6(32)];
        _functionL.textColor =[UIColor darkGrayColor];
        [self.contentView addSubview:_functionL];
    }

}

-(void)btnClick:(UIButton *)btn{
    if (btn.tag ==0) {
        
    }
    


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
