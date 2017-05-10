//
//  UIColor+Hex.m
//  百度外卖
//
//  Created by Mac OS X on 2017/5/10.
//  Copyright © 2017年 Mac OS X. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha{
    
    NSString *colorStr = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([colorStr length] < 6) {
        
        return [UIColor clearColor];
        
    }
    
    if ([colorStr hasPrefix:@"0X"]) {
        
        
        colorStr = [colorStr substringFromIndex:2];
    }
    
    if ([colorStr hasPrefix:@"#"]) {
        
        colorStr = [colorStr substringFromIndex:1];
        
    }
    
    if ([colorStr length] != 6) {
        
        [UIColor clearColor];
        
    }
    
    NSRange range;
    
    range.location = 0;
    
    range.length = 2;
    
    NSString *redStr = [colorStr substringWithRange:range];
    
    range.location = 2;
    
    NSString *greenStr = [colorStr substringWithRange:range];
    
    range.location = 4;
    NSString *blueStr = [colorStr substringWithRange:range];
    
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:redStr] scanHexInt:&r];
    
    [[NSScanner scannerWithString:greenStr] scanHexInt:&g];
    
    [[NSScanner scannerWithString:blueStr] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)color{
    
    return [self colorWithHexString:color alpha:1.0f];
}


@end
