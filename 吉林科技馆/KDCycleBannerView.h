//
//  KDCycleBannerView.h
//  KDCycleBannerViewDemo
//
//  Created by Kingiol on 14-4-11.
//  Copyright (c) 2014年 Kingiol. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KDCycleBannerView;

typedef void(^ReloadCompleteBlock)(void);

@protocol KDCycleBannerViewDataource <NSObject>

@required
- (NSArray *)numberOfKDCycleBannerView:(KDCycleBannerView *)bannerView;
- (UIViewContentMode)contentModeForImageIndex:(NSUInteger)index;

@optional
- (UIImage *)placeHolderImageOfZeroBannerView;
- (UIImage *)placeHolderImageOfBannerView:(KDCycleBannerView *)bannerView atIndex:(NSUInteger)index;

@end

@protocol KDCycleBannerViewDelegate <NSObject>

@optional
- (void)cycleBannerView:(KDCycleBannerView *)bannerView didScrollToIndex:(NSUInteger)index;
- (void)cycleBannerView:(KDCycleBannerView *)bannerView didSelectedAtIndex:(NSUInteger)index;

@end

@interface KDCycleBannerView : UIView
@property (assign, nonatomic) BOOL pageControlHidden;

@property (strong, nonatomic) UIPageControl *pageControl;

// Delegate and Datasource
@property (weak, nonatomic) IBOutlet id<KDCycleBannerViewDataource> datasource;
@property (weak, nonatomic) IBOutlet id<KDCycleBannerViewDelegate> delegate;

@property (assign, nonatomic, getter = isContinuous) BOOL continuous;   // if YES, then bannerview will show like a carousel, default is NO
@property (assign, nonatomic) NSUInteger autoPlayTimeInterval;  // if autoPlayTimeInterval more than 0, the bannerView will autoplay with autoPlayTimeInterval value space, default is 0

- (void)reloadDataWithCompleteBlock:(ReloadCompleteBlock)competeBlock;
- (void)setCurrentPage:(NSInteger)currentPage animated:(BOOL)animated;
- (void)startAutoSwitchBannerView;
- (void)cancelAutoSwitchBannerView;

@end
