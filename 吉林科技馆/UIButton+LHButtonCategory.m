//
//  UIButton+LHButtonCategory.m
//  车叭叭
//
//  Created by Mac on 16/5/5.
//  Copyright © 2016年 imac. All rights reserved.
//

#import "UIButton+LHButtonCategory.h"

@implementation UIButton (LHButtonCategory)

- (void)setTitle:(NSString *)aTitle andFont:(UIFont *)aFont andTitleColor:(UIColor *)textColor andBgColor:(UIColor *)bgColor andRadius:(float)radius {
    [self setTitle:aTitle forState:UIControlStateNormal];
    self.titleLabel.font = aFont;
    
    if (textColor) {
        [self setTitleColor:textColor forState:UIControlStateNormal];
    }
    if (bgColor) {
        self.backgroundColor = bgColor;
    }
    if (radius > 0) {
        self.layer.cornerRadius = radius;
    }
}

@end
