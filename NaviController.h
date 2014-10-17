//
//  NaviController.h
//  Sa
//
//  Created by cyd on 14-10-14.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdViewController.h"
@interface NaviController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *m_tableview;
}
@property(nonatomic,retain)NSArray *listdata;
@end
