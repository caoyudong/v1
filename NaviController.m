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
@synthesize listdata;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *d1=[[NSDictionary alloc]initWithObjectsAndKeys:@"head",@"left_img",@"1",@"up_label",@"1",@"down_label", nil];
    NSDictionary *d2=[[NSDictionary alloc]initWithObjectsAndKeys:@"bo",@"left_img",@"2",@"up_label",@"2",@"down_label", nil];
    NSDictionary *d3=[[NSDictionary alloc]initWithObjectsAndKeys:@"head",@"left_img",@"3",@"up_label",@"3",@"down_label", nil];
    listdata=[[NSArray alloc]initWithObjects:d1,d2,d3, nil];
    m_tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 700, 600) style:UITableViewStylePlain];
    m_tableview.dataSource=self;
    m_tableview.delegate=self;
    [[self view] addSubview:m_tableview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [listdata count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        UIImage *image=[UIImage imageNamed:[[self.listdata objectAtIndex:indexPath.row]objectForKey:@"left_img"]];
        UIImageView *imgview=[[UIImageView alloc]initWithFrame:CGRectMake(50, 5, 42, 42)];
        imgview.image=image;
        [cell addSubview:imgview];
        UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(100, 5, 200, 20)];
        lable.text=[[self.listdata objectAtIndex:indexPath.row]objectForKey:@"up_label"];
        [cell addSubview:lable];
    }
    return cell;

    
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    ThirdViewController *thirdviewController=[ThirdViewController new];
//    [self.navigationController pushViewController:thirdviewController animated:true];
    [self.navigationController popViewControllerAnimated:YES];
}


//-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    NaviController *navicontroller=[NaviController new];
//    [self.navigationController popViewControllerAnimated:true];}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
