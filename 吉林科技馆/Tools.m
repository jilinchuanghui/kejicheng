//
//  Tools.m
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/21.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import "Tools.h"

@implementation Tools

//字符串转颜色
+ (UIColor *) colorWithHexString: (NSString *) stringToConvert
{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    
    if ([cString length] < 6)
        return [UIColor whiteColor];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor whiteColor];
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

// 检测字符串是否为空
+ (BOOL)isEmpty:(NSString *)src{
    if (src == nil || [@"" isEqualToString:src] || [src isKindOfClass:[NSNull class]] || [src isEqualToString:@"(null)"] || [src isEqualToString:@"<null>"]) {
        return YES;
    }
    return NO;
}

@end
