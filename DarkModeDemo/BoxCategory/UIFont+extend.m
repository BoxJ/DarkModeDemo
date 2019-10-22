//
//  UIFont+extend.m
//  DarkModeDemo
//
//  Created by BoxJing on 2019/10/22.
//  Copyright © 2019 BoxJing. All rights reserved.
//

#import "UIFont+extend.h"
@implementation UIFont (extend)
+(UIFont *)imageFontWithSize:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"iconFont" size: fontSize];
}
@end
