//
//  ViewController.h
//  Sa
//
//  Created by cyd on 14-10-11.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NaviController.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *m_tableview;
    
}
@property (nonatomic,retain)NSArray *listData;
@end

