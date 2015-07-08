//
//  SideViewController.m
//  Higgs
//
//  Created by Yun on 15/7/8.
//  Copyright (c) 2015年 Yun. All rights reserved.
//

#import "SideMenuView.h"

@interface SideMenuView ()
@property (nonatomic, strong) UIView* menuView;
@property (nonatomic, assign) CGRect centertRect;
@property (nonatomic, strong) UIView* bgView;
@end

@implementation SideMenuView


/**
 *  在那个view里面显示，显示子view的大小，为的是点击周围隐藏
 *
 *  @param view 显示在那个view里面
 *  @param rect 大小
 */
- (void)showInView:(UIView*)view withFrame:(CGRect)rect{
    if(_isShow){
        [self hiddenMenu];
        return;
    }
    if(!_menuView){
        self.frame = view.bounds;
        [self addSubview:self.menuContentView];
        self.menuContentView.frame = rect;
        _menuView = self.menuContentView;
        [view addSubview:self];
        self.bgView.frame = view.bounds;
    }
    self.hidden = NO;
    _centertRect = rect;
    self.menuContentView.frame = CGRectMake(rect.origin.x, rect.origin.y-rect.size.height, rect.size.width, rect.size.height);
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.menuContentView.frame = rect;
                     }
                     completion:^(BOOL finished) {
                         _isShow = YES;
                     }];
}

- (void)hiddenMenu{
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.menuContentView.frame = CGRectMake(_centertRect.origin.x, _centertRect.origin.y-_centertRect.size.height, _centertRect.size.width, _centertRect.size.height);
                     }
                     completion:^(BOOL finished) {
                         self.hidden = YES;
                         _isShow = NO;
                     }];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self hiddenMenu];
}

#pragma mark getter
- (UIView*)bgView{
    if(!_bgView){
        _bgView = [[UIView alloc] init];
        _bgView.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_bgView];
        [self sendSubviewToBack:_bgView];
        _bgView.alpha = 0.4;
    }
    return _bgView;
}
@end
