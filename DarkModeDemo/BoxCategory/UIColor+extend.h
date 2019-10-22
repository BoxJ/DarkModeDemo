//
//  UIColor+extend.h
//  DarkModeDemo
//
//  Created by BoxJing on 2019/10/22.
//  Copyright © 2019 BoxJing. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (extend)
+(UIColor *)colorWithDarkModeColor:(UIColor *)darkColor normalColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
