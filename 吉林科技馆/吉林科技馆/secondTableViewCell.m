//
//  secondTableViewCell.m
//  基本框架搭建
//
//  Created by 常玉坤 on 2017/4/14.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "secondTableViewCell.h"
#import "secondCollectionViewCell.h"
#import "secondCollectionViewCell.h"
@interface  secondTableViewCell ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic,strong)UICollectionView *collectionView;
@end

@implementation secondTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createView];
    }

    return self;
}

-(void)createView{

//    layout.minimumInteritemSpacing = 10;
//    layout.minimumLineSpacing = 10;
//    layout.itemSize = CGSizeMake((ScreenWidth - 40)/2, (ScreenWidth - 40) /2);
//    layout.sectionInset = UIEdgeInsetsMake(5, 10, 10, 10);
//    layout.sectionHeadersPinToVisibleBounds = YES;
//    layout.sectionFootersPinToVisibleBounds = YES;
    _titleL =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 15)];
    _titleL.textAlignment =NSTextAlignmentCenter;
    _titleL.textColor =[UIColor blackColor];
    _titleL.text =@"top 人气展厅";
    [self.contentView addSubview:_titleL];
    UICollectionViewFlowLayout *layout =[[UICollectionViewFlowLayout alloc]init];
    layout.minimumLineSpacing =10;
    layout.minimumLineSpacing =10;
    layout.itemSize =CGSizeMake((ScreenWidth -50)/3, (ScreenWidth -50)/3+ScaleWidth6(60));
    layout.sectionInset =UIEdgeInsetsMake(5, 10, 10, 10);
    layout.sectionHeadersPinToVisibleBounds =NO;
    layout.sectionFootersPinToVisibleBounds =NO;
    _collectionView =[[UICollectionView alloc] initWithFrame:CGRectMake(0, 15, ScreenWidth, (ScreenWidth -50)/3+15+ScaleWidth6(60)) collectionViewLayout:layout];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.backgroundColor =[UIColor whiteColor];
    [self.contentView addSubview:_collectionView];
    [_collectionView registerClass:[secondCollectionViewCell class] forCellWithReuseIdentifier:@"collectionCELL"];
}

#pragma mark delegate

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 3;

}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 1;

}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    secondCollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCELL" forIndexPath:indexPath];
    cell.backgroundColor =[UIColor blueColor];
    return cell;
    

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
