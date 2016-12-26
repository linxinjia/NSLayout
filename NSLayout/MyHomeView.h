//
//  MyHomeView.h
//  NSLayout
//
//  Created by Apple on 16/12/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCustomButton.h"

@interface MyHomeView : UIView
@property (nonatomic ,strong)UILabel *headerBottom;
@property (nonatomic ,strong)UIButton *messageBt;
@property (nonatomic ,strong)UILabel *title;
@property (nonatomic ,strong)UIButton *signIn;

@property (nonatomic ,strong)UIImageView *spokesman;
@property (nonatomic ,strong)UIImageView *selftyImage;
@property (nonatomic ,strong)UILabel *selftyLabel;
@property (nonatomic ,strong)UIImageView *welfareImage;
@property (nonatomic ,strong)UILabel *welfareLabel;
@property (nonatomic ,strong)UIImageView *dataImage;
@property (nonatomic ,strong)UILabel *dataLabel;
@property (nonatomic ,strong)UILabel *grayLabel;


//@property (nonatomic ,strong)UIButton *messageBt;
//@property (nonatomic ,strong)UIButton *messageBt;
//@property (nonatomic ,strong)UIButton *messageBt;


@property (nonatomic ,strong)UILabel *footerBottom;
@property (nonatomic ,strong)UILabel *line;
@property (nonatomic ,strong)MyCustomButton *homePage;
@property (nonatomic ,strong)UIButton *investPage;
@property (nonatomic ,strong)UIButton *finedPage;
@property (nonatomic ,strong)UIButton *minePage;

@end
