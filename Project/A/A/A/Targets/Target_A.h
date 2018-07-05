//
//  Target_A.h
//  A
//
//  Created by Start on 2018/6/21.
//  Copyright © 2018年 Start. All rights reserved.
//

#import <UIKit/UIKit.h>
//A_Category里面有performTarget:@"A"，所以我们新建一个对象，叫做Target_A
@interface Target_A : NSObject
- (UIViewController *)Action_viewController:(NSDictionary *)params;
@end
