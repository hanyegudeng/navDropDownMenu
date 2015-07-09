//
//  MainViewController.m
//  NavDropDownMenuDemo
//
//  Created by Yun on 15/7/8.
//  Copyright (c) 2015年 Yun. All rights reserved.
//

#import "MainViewController.h"
#import "MenuTableViewController.h"
#import "NavDropDownMenu.h"
 
@interface MainViewController ()
@property (nonatomic, strong) NavDropDownMenu* dropDownMenu;
@property (nonatomic, strong) MenuTableViewController* menu;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Right" style:UIBarButtonItemStyleDone target:self action:@selector(showMenuRight)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left" style:UIBarButtonItemStyleDone target:self action:@selector(showMenuLeft)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMenuLeft{
    self.dropDownMenu.menuContentView = self.menu.view;
    [self.dropDownMenu showInView:self.view withFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height*0.5)];
}

- (void)showMenuRight{
    self.dropDownMenu.menuContentView = self.menu.view;
    [self.dropDownMenu showInView:self.view withFrame:CGRectMake(self.view.frame.size.width*0.5, 64, self.view.frame.size.width*0.5, self.view.frame.size.height*0.5)];
}

#pragma mark Getter
- (NavDropDownMenu*)dropDownMenu{
    if(!_dropDownMenu){
        _dropDownMenu = [[NavDropDownMenu alloc] init];
    }
    return _dropDownMenu;
}

- (MenuTableViewController*)menu{
    if(!_menu){
        _menu = [[MenuTableViewController alloc] init];
    }
    return _menu;
}

@end
