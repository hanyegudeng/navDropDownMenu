//
//  SideViewController.h
//  Higgs
//
//  Created by Yun on 15/7/8.
//  Copyright (c) 2015年 Yun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideMenuView : UIView

@property (nonatomic, strong) UIView* menuContentView;
@property (nonatomic, assign) BOOL isShow;
/**
 *  在那个view里面显示，显示子view的大小，为的是点击周围隐藏
 *
 *  @param view 显示在那个view里面
 *  @param rect 大小
 */
- (void)showInView:(UIView*)view withFrame:(CGRect)rect;

- (void)hiddenMenu;

@end
