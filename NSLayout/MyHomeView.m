//
//  MyHomeView.m
//  NSLayout
//
//  Created by Apple on 16/12/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "MyHomeView.h"

@implementation MyHomeView

- (instancetype)init{
    if (self = [super init]) {
        [self myLayout];//拟导航栏
        [self myLayout2];//上半部分
        [self myLayout3];//拟标签栏
        [self myLayout4];//下半部分
    }
    return self;
}

- (void)myLayout{
    _headerBottom = [UILabel new];
    //使用代码布局 需要将这个属性设置为NO
    _headerBottom.translatesAutoresizingMaskIntoConstraints = NO;
    _headerBottom.backgroundColor = [UIColor colorWithRed:251/255.0 green:214/255.0 blue:64/255.0 alpha:1];
    
    //创建x居中的约束
    NSLayoutConstraint * constraintx = [NSLayoutConstraint constraintWithItem:_headerBottom attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    //top
    NSLayoutConstraint * constrainty = [NSLayoutConstraint constraintWithItem:_headerBottom attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    //创建宽度约束
    NSLayoutConstraint * constraintw = [NSLayoutConstraint constraintWithItem:_headerBottom attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    //创建高度约束
    NSLayoutConstraint * constrainth = [NSLayoutConstraint constraintWithItem:_headerBottom attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:64];
    
    //添加约束之前，必须将视图加在父视图上
    [self addSubview:_headerBottom];
    [self addConstraints:@[constraintx,constrainty,constrainth,constraintw]];
    
    
    
    
    _messageBt = [UIButton new];
    [_messageBt setImage:[UIImage imageNamed:@"icon_message"] forState:UIControlStateNormal];
    [self addSubview:_messageBt];
    _messageBt.imageView.contentMode = UIViewContentModeScaleAspectFit;
    _messageBt.translatesAutoresizingMaskIntoConstraints =NO;
    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_messageBt
                                              attribute:NSLayoutAttributeLeading
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeLeading
                                             multiplier:1.0f
                                               constant:15];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_messageBt
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_messageBt
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:25];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_messageBt
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:27];
    [self addConstraint:constraint];
    

    
    
    
    _title = [UILabel new];
    _title.text = @"团贷网";
    [self addSubview:_title];
    _title.font = [UIFont systemFontOfSize:20.0];
    _title.translatesAutoresizingMaskIntoConstraints =NO;
//    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_title
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_title
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_title
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:27];
    [self addConstraint:constraint];

    
    
    
    
    
    
    _signIn = [UIButton new];
    [_signIn setImage:[UIImage imageNamed:@"icon_signin"] forState:UIControlStateNormal];
    _signIn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_signIn];
    _signIn.translatesAutoresizingMaskIntoConstraints =NO;
//    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_signIn
                                              attribute:NSLayoutAttributeTrailing
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeTrailing
                                             multiplier:1.0f
                                               constant:-15];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_signIn
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_signIn
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:25];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_signIn
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:27];
    [self addConstraint:constraint];
}

- (void)myLayout2{
    _spokesman = [UIImageView new];
    
    _spokesman.image = [UIImage imageNamed:@"icon_spokesman"];//  MyBundleDemo.bundle/Contents/Resources/icon
    _spokesman.backgroundColor = [UIColor greenColor];
    [self addSubview:_spokesman];
    _spokesman.translatesAutoresizingMaskIntoConstraints =NO;
    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_spokesman
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_spokesman
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_headerBottom
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_spokesman
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_spokesman
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_spokesman
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:0.35f
                                               constant:0];
    [self addConstraint:constraint];
    
    
    _selftyImage = [UIImageView new];
    _selftyImage.image = [UIImage imageNamed:@"Icon_safety"];
    _selftyImage.backgroundColor = [UIColor whiteColor];
    _selftyImage.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_selftyImage];
    _selftyImage.translatesAutoresizingMaskIntoConstraints =NO;
//    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_selftyImage
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_spokesman
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_selftyImage
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_spokesman
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1/3.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_selftyImage
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:35];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_selftyImage
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_selftyImage
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    
    _selftyLabel = [UILabel new];
    _selftyLabel.backgroundColor = [UIColor whiteColor];
    _selftyLabel.text = @"安全保障";
    _selftyLabel.font = [UIFont systemFontOfSize:15.0];
    _selftyLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_selftyLabel];
    _selftyLabel.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_selftyLabel
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_selftyImage
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_selftyLabel
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_selftyImage
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_selftyLabel
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:100];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_selftyLabel
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:20];
    [self addConstraint:constraint];
    
    
    
    
    
    //新手福利
    _welfareImage = [UIImageView new];
    _welfareImage.image = [UIImage imageNamed:@"icon_welfare"];
    _welfareImage.backgroundColor = [UIColor whiteColor];
    _welfareImage.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_welfareImage];
    _welfareImage.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_welfareImage
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_spokesman
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_welfareImage
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_spokesman
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_welfareImage
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:35];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_welfareImage
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_welfareImage
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    _welfareLabel = [UILabel new];
    _welfareLabel.backgroundColor = [UIColor whiteColor];
    _welfareLabel.text = @"新手福利";
    _welfareLabel.font = [UIFont systemFontOfSize:15.0];
    _welfareLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_welfareLabel];
    _welfareLabel.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_welfareLabel
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_welfareImage
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_welfareLabel
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_welfareImage
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_welfareLabel
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:100];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_welfareLabel
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:20];
    [self addConstraint:constraint];
    
    
    
    
    //团代数据
    _dataImage = [UIImageView new];
    _dataImage.image = [UIImage imageNamed:@"icon_data"];
    _dataImage.backgroundColor = [UIColor whiteColor];
    _dataImage.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_dataImage];
    _dataImage.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_dataImage
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_spokesman
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_dataImage
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_spokesman
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:5/3.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_dataImage
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:35];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_dataImage
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_dataImage
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    _dataLabel = [UILabel new];
    _dataLabel.backgroundColor = [UIColor whiteColor];
    _dataLabel.text = @"团代数据";
    _dataLabel.font = [UIFont systemFontOfSize:15.0];
    _dataLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_dataLabel];
    _dataLabel.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_dataLabel
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_dataImage
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:10];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_dataLabel
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_dataImage
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_dataLabel
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:100];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_dataLabel
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:20];
    [self addConstraint:constraint];
    
    
    _grayLabel = [UILabel new];
    _grayLabel.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:240/255.0 alpha:1];
    [self addSubview:_grayLabel];
    _grayLabel.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_grayLabel
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_selftyLabel
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:15];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_grayLabel
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_grayLabel
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_grayLabel
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:10];
    [self addConstraint:constraint];
}

- (void)myLayout3{
    _footerBottom = [UILabel new];
    _footerBottom.backgroundColor = [UIColor colorWithRed:247/255.0 green:247/255.0 blue:247/255.0 alpha:1];
    [self addSubview:_footerBottom];
    _footerBottom.translatesAutoresizingMaskIntoConstraints =NO;
    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_footerBottom
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_footerBottom
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_footerBottom
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_footerBottom
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:50];
    [self addConstraint:constraint];
    
    
    
    
    _line = [UILabel new];
    _line.backgroundColor = [UIColor colorWithRed:224/255.0 green:224/255.0 blue:224/255.0 alpha:1];
    [self addSubview:_line];
    _line.translatesAutoresizingMaskIntoConstraints =NO;
//    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_line
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_line
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_line
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeWidth
                                             multiplier:1.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_line
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:1];
    [self addConstraint:constraint];
    
    
    //首页
    _homePage = [MyCustomButton new];
    [self addSubview:_homePage];
    _homePage.backgroundColor = [UIColor clearColor];
    [_homePage setImage:[UIImage imageNamed:@"icon_tdlogo"] forState:UIControlStateNormal];//icon_tdlogo
    _homePage.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [_homePage setTitle:@"首页" forState:UIControlStateNormal];
    [_homePage setTitleColor:[UIColor colorWithRed:255/255.0 green:188/255.0 blue:0/255.0 alpha:1] forState:UIControlStateNormal];
    _homePage.titleLabel.font = [UIFont systemFontOfSize:11.0];
    _homePage.titleLabel.textAlignment = NSTextAlignmentCenter;
    _homePage.translatesAutoresizingMaskIntoConstraints =NO;
    
//    _homePage.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 16, 0);
//    _homePage.titleEdgeInsets = UIEdgeInsetsMake(30, -60, 0, 0);
//    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_homePage
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:5];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_homePage
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-2];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_homePage
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:29];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_homePage
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:1/4.0f
                                               constant:0];
    [self addConstraint:constraint];
    

    
    //投资
    _investPage = [MyCustomButton new];
    [self addSubview:_investPage];
    _investPage.backgroundColor = [UIColor clearColor];
    [_investPage setImage:[UIImage imageNamed:@"icon_invest"] forState:UIControlStateNormal];
    _investPage.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [_investPage setTitle:@"投资" forState:UIControlStateNormal];
    [_investPage setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    _investPage.titleLabel.font = [UIFont systemFontOfSize:11.0];
    _investPage.titleLabel.textAlignment = NSTextAlignmentCenter;
    _investPage.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_investPage
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:5];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_investPage
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-2];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_investPage
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:29];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_investPage
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:3/4.0f
                                               constant:0];
    [self addConstraint:constraint];

    
    //发现
    _finedPage = [MyCustomButton new];
    [self addSubview:_finedPage];
    _finedPage.backgroundColor = [UIColor clearColor];
    [_finedPage setImage:[UIImage imageNamed:@"icon_fined"] forState:UIControlStateNormal];
    _finedPage.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [_finedPage setTitle:@"发现" forState:UIControlStateNormal];
    [_finedPage setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    _finedPage.titleLabel.font = [UIFont systemFontOfSize:11.0];
    _finedPage.titleLabel.textAlignment = NSTextAlignmentCenter;
    _finedPage.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_finedPage
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:5];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_finedPage
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-2];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_finedPage
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:29];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_finedPage
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:5/4.0f
                                               constant:0];
    [self addConstraint:constraint];
    
    
    //我的
    _minePage = [MyCustomButton new];
    [self addSubview:_minePage];
    _minePage.backgroundColor = [UIColor clearColor];
    [_minePage setImage:[UIImage imageNamed:@"icon_mine"] forState:UIControlStateNormal];
    _minePage.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [_minePage setTitle:@"首页" forState:UIControlStateNormal];
    [_minePage setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    _minePage.titleLabel.font = [UIFont systemFontOfSize:11.0];
    _minePage.titleLabel.textAlignment = NSTextAlignmentCenter;
    _minePage.translatesAutoresizingMaskIntoConstraints =NO;
    //    NSLayoutConstraint *constraint = nil;
    constraint = [NSLayoutConstraint constraintWithItem:_minePage
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:5];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_minePage
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:_footerBottom
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:-2];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_minePage
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:nil
                                              attribute:0
                                             multiplier:1.0f
                                               constant:29];
    [self addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_minePage
                                              attribute:NSLayoutAttributeCenterX
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self
                                              attribute:NSLayoutAttributeCenterX
                                             multiplier:7/4.0f
                                               constant:0];
    [self addConstraint:constraint];
}

- (void)myLayout4{
    
}

@end
