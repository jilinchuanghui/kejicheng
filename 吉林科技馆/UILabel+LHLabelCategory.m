//
//  UILabel+LHLabelCategory.m
//  车叭叭
//
//  Created by Mac on 16/5/5.
//  Copyright © 2016年 imac. All rights reserved.
//

#import "UILabel+LHLabelCategory.h"

@implementation UILabel (LHLabelCategory)

- (void)setText:(NSString *)aText andFont:(UIFont *)aFont andTextColor:(UIColor *)aColor {
    self.text      = aText;
    self.font      = aFont;
    self.textColor = aColor;
}


- (void)setFont:(UIFont *)aFont andTextColor:(UIColor *)aColor {
    self.font      = aFont;
    self.textColor = aColor;
}


+ (NSAttributedString *)attributedStringWithLineSpacing:(float)lineSpacing andString:(NSString *)string{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpacing];//行距
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, attributedString.string.length)];
    
    return [attributedString copy];
}

@end
