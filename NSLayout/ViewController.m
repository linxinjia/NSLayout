//
//  ViewController.m
//  NSLayout
//
//  Created by Apple on 16/12/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "MyHomeView.h"
#import "MyHomeViewModel.h"
#import <MyFramwork/MyObject.h>
#import "MyStaticLibrary.h"

@interface ViewController ()
{
    
}
@property (nonatomic ,strong)UIView *homeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _homeView = [MyHomeView new];
    
    
//    MyStaticLibrary *lib = [MyStaticLibrary new];
//    [lib myLog];
    
    
    

    _homeView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_homeView];
    _homeView.translatesAutoresizingMaskIntoConstraints =NO;
    NSLayoutConstraint *constraint = nil;
    
    constraint = [NSLayoutConstraint constraintWithItem:_homeView
                                              attribute:NSLayoutAttributeLeading
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeLeading
                                             multiplier:1.0f
                                               constant:0];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_homeView
                                              attribute:NSLayoutAttributeTrailing
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeTrailing
                                             multiplier:1.0f
                                               constant:0];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_homeView
                                              attribute:NSLayoutAttributeTop
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeTop
                                             multiplier:1.0f
                                               constant:0];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:_homeView
                                              attribute:NSLayoutAttributeBottom
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeBottom
                                             multiplier:1.0f
                                               constant:0];
    [self.view addConstraint:constraint];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
