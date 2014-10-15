//
//  NaviController.m
//  Sa
//
//  Created by cyd on 14-10-14.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "NaviController.h"

@interface NaviController ()

@end

@implementation NaviController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NaviController *navicontroller=[NaviController new];
    [self.navigationController popViewControllerAnimated:true];}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
