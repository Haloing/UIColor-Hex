//
//  UIColor+Hex.h
//  百度外卖
//
//  Created by Mac OS X on 2017/5/10.
//  Copyright © 2017年 Mac OS X. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHexString:(NSString *)color;

@end
