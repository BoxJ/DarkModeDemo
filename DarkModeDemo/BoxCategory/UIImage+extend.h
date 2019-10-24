//
//  UIImage+extend.h
//  DarkModeDemo
//
//  Created by BoxJing on 2019/10/24.
//  Copyright © 2019 BoxJing. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (extend)
+ (UIImage *)svgImageNamed:(NSString *)name size:(CGSize)size;
+ (UIImage *)svgImageNamed:(NSString *)name size:(CGSize)size tintColor:(UIColor *)tintColor;
@end

NS_ASSUME_NONNULL_END
