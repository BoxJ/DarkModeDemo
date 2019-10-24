//
//  ViewController.m
//  DarkModeDemo
//
//  Created by BoxJing on 2019/10/22.
//  Copyright © 2019 BoxJing. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+extend.h"
#import "UIFont+extend.h"
#import "UIImage+extend.h"
#import "SVGKit.h"

#define iPhone_Width UIScreen.mainScreen.bounds.size.width
#define iPhone_Height UIScreen.mainScreen.bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIColor *color = [UIColor colorWithDarkModeColor:[UIColor blackColor] normalColor:[UIColor whiteColor]];
    [self.view setBackgroundColor:color];
    
//    图标放在 Assets里面
    UIImageView *imgView=[[UIImageView alloc] initWithFrame:CGRectMake(40.0, 84.0, 40.0, 40.0)];
    imgView.image=[UIImage imageNamed:@"iconImage"];
    [self.view addSubview:imgView];
    
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0.0, 120.0, iPhone_Width, 100.0)];
    label.textColor=[UIColor colorWithDarkModeColor:[UIColor lightGrayColor] normalColor:[UIColor blackColor]];;
    label.numberOfLines=0;
    label.textAlignment=NSTextAlignmentCenter;
    label.text=@"生前何必贪睡\n死后自然长眠";
    [self.view addSubview:label];
    
    UILabel * label2 = [[UILabel alloc] initWithFrame:CGRectMake((iPhone_Width-34.0)/2.0, 250.0, 34.0, 34.0)];
    label2.font = [UIFont imageFontWithSize:34.0];
    label2.text = @"\U0000e668";
    label2.textColor=[UIColor colorWithDarkModeColor:[UIColor lightGrayColor] normalColor:[UIColor redColor]];
    [self.view addSubview: label2];
    
    UILabel * label3 = [[UILabel alloc] initWithFrame:CGRectMake((iPhone_Width-80.0)/2.0, 350.0, 80.0, 80.0)];
    UIFont *iconfont3 = [UIFont imageFontWithSize:80.0];
    label3.font = iconfont3;
    label3.text = @"\U0000e6a2";
    label3.textColor=[UIColor colorWithDarkModeColor:[UIColor lightGrayColor] normalColor:[UIColor purpleColor]];
    [self.view addSubview: label3];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(20.0, 440.0, 60.0, 40.0);
    button.titleLabel.font=[UIFont imageFontWithSize:36.0];
    [button setTitle:@"\U0000e6ac" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithDarkModeColor:[UIColor lightGrayColor] normalColor:[UIColor redColor]] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UIImageView *imgViewSvg=[[UIImageView alloc] initWithImage:[UIImage svgImageNamed:@"boxsvg" size:CGSizeMake(80.0, 80.0) tintColor:UIColor.redColor]];
    imgViewSvg.frame=CGRectMake(80.0, 500.0, 80.0, 80.0);
    [self.view addSubview:imgViewSvg];
    
    UIImageView *imgViewSvg2=[[UIImageView alloc] initWithImage:[UIImage svgImageNamed:@"boxsvg" size:CGSizeMake(120.0, 120.0) tintColor:UIColor.blueColor]];
    imgViewSvg2.backgroundColor=[UIColor blackColor];
    imgViewSvg2.frame=CGRectMake(180.0, 500.0, 120.0, 120.0);
    [self.view addSubview:imgViewSvg2];
    
    SVGKImageView *imgV = [[SVGKFastImageView alloc] initWithSVGKImage:[SVGKImage imageNamed:@"boxsvg"]];
    imgV.frame=CGRectMake(0.0, 600.0, 60.0, 60.0);
    [self.view addSubview:imgV];
    
}

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
     [super traitCollectionDidChange:previousTraitCollection];
    NSLog(@"-----current-%ld\n=====previous=%ld",self.traitCollection.userInterfaceStyle,previousTraitCollection.userInterfaceStyle);
     // trait发生了改变
     if ([self.traitCollection hasDifferentColorAppearanceComparedToTraitCollection:previousTraitCollection]) {
         
         
     }
}

@end
