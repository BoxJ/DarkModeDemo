//
//  UIColor+extend.m
//  DarkModeDemo
//
//  Created by BoxJing on 2019/10/22.
//  Copyright © 2019 BoxJing. All rights reserved.
//

#import "UIColor+extend.h"

@implementation UIColor (extend)
+(UIColor *)colorWithDarkModeColor:(UIColor *)darkColor normalColor:(UIColor *)color
{
    if (@available(iOS 13.0,*)) {
        UIColor *dyColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull trainCollection) {
            if ([trainCollection userInterfaceStyle] == UIUserInterfaceStyleDark) {
                return darkColor;
            }
            else {
                return color;
            }
        }];
        return dyColor;
    }
    return color;
}
@end
