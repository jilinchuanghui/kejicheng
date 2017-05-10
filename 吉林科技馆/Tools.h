//
//  Tools.h
//  吉林科技馆
//
//  Created by 常玉坤 on 2017/4/21.
//  Copyright © 2017年 常玉坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tools : NSObject

//字符串转颜色
+ (UIColor *) colorWithHexString: (NSString *) stringToConvert;

//判断字符串是否为空
+ (BOOL)isEmpty:(NSString *)src;
@end
