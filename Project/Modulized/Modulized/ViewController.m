//
//  ViewController.m
//  Modulized
//
//  Created by Start on 2018/6/21.
//  Copyright © 2018年 Start. All rights reserved.
//

#import "ViewController.h"
#import <CTMediator/CTMediator.h>
#import <A_Category/CTMediator+A.h>
@interface ViewController ()
@property (nonatomic, strong) UIButton *pushAViewControllerButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self.view addSubview:self.pushAViewControllerButton];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.pushAViewControllerButton sizeToFit];
    self.pushAViewControllerButton.frame = CGRectMake(50, 200, 300, 44);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
#pragma mark - event response
- (void)didTappedPushAViewControllerButton:(UIButton *)button
{
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewControllerWithCallback:nil];
    [self.navigationController pushViewController:viewController animated:YES];
}
#pragma mark - getters and setters
- (UIButton *)pushAViewControllerButton
{
    if (_pushAViewControllerButton == nil) {
        _pushAViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushAViewControllerButton setTitle:@"push A view controller" forState:UIControlStateNormal];
        [_pushAViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushAViewControllerButton addTarget:self action:@selector(didTappedPushAViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushAViewControllerButton;
}

@end
