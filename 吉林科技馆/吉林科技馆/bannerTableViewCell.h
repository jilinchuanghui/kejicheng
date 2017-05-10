//
//  bannerTableViewCell.h
//  基本框架搭建
//
//  Created by 常玉坤 on 2017/4/14.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KDCycleBannerView.h"
@interface bannerTableViewCell : UITableViewCell <KDCycleBannerViewDelegate,KDCycleBannerViewDataource>
@property (nonatomic,strong) KDCycleBannerView *bannerView;
@property (nonatomic,strong) NSMutableArray *headerImgsArr;
@end
