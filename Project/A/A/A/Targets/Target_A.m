//
//  Target_A.m
//  A
//
//  Created by Start on 2018/6/21.
//  Copyright © 2018年 Start. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"
@implementation Target_A
//因为Target对象处于A的命名域中,所以Target对象中可以随意import A业务线中的任何头文件。
- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    //Target对象的Action设计出来也不是仅仅用于返回ViewController实例的，它可以用来执行各种属于业务线本身的任务。例如上传文件，转码等等各种任务其实都可以作为一个Action来给外部调用，Action完成这些任务的时候，业务逻辑是可以写在Action方法里面的
    //Action具备调度业务线提供的任何对象和方法来完成自己的任务的能力。它的本质就是对外业务的一层服务化封装
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}
@end
