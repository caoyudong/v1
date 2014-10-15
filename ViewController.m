//
//  ViewController.m
//  Sa
//
//  Created by cyd on 14-10-11.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize listData;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dicObj1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"head",@"left_img",@"1",@"up_label",@"1的详情",@"down_label", nil];
    NSDictionary *dicObj2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"head",@"left_img",@"2",@"up_label",@"2的详情",@"down_label", nil];
    NSDictionary *dicObj3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"head",@"left_img",@"3",@"up_label",@"3的详情",@"down_label", nil];
    self.listData = [[NSMutableArray alloc]initWithObjects:dicObj1,dicObj2,dicObj3, nil];
    
    m_tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
//    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:@"1",@"1",@"2",@"2",@"3",@"3"
//                       ,@"4",@"4",@"5",@"5",@"6",@"6",nil];
//    NSEnumerator *eo=[dic objectEnumerator];
//    
//    for (NSObject *object in eo) {
//        self.listData=object;
//    }
    
    
    m_tableview.delegate = self;
    m_tableview.dataSource = self;
    [self.view addSubview:m_tableview];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self listData] count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
//    }
    
    UIImage *left_image = [UIImage imageNamed:[[self.listData objectAtIndex:indexPath.row]objectForKey:@"left_img"]];
    
    UIImageView *left_imageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 5, 42, 42)];
    left_imageView.image = left_image;
    [cell addSubview:left_imageView];
    
    //实例化label
//    int row = indexPath.row;
    UILabel *up_label = [[UILabel alloc] initWithFrame:CGRectMake(100, 5, 200, 20)];
    up_label.text = [[self.listData objectAtIndex:indexPath.row]objectForKey:@"up_label"];   //设置label所显示的文本
    [cell addSubview:up_label];
    UILabel *down_label = [[UILabel alloc] initWithFrame:CGRectMake(110, 29, 200, 20)];
    down_label.text=[[self.listData objectAtIndex:indexPath.row]objectForKey:@"down_label"];
    [cell addSubview:down_label];
        UIButton *button= [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(600, 20, 60, 20);
    [button setTitle:@"点击" forState:UIControlStateNormal];
//    button.backgroundColor=[UIColor blackColor];
    [cell addSubview:button];
    [button addTarget:self action:@selector(sure:) forControlEvents:UIControlEventTouchUpInside];
    }cd
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDemoApplicationDirectory, NSUserDomainMask, YES);
//    NSLog(@"%@",paths);
    return cell;
}

//-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    NaviController *navicontroller=[NaviController new];
//    [self.navigationController pushViewController:navicontroller animated:true];
//
//    
//}
-(void)sure:(id)sender
{
    NaviController *navicontroller=[NaviController new];
    [self.navigationController pushViewController:navicontroller animated:true];
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 52.0;
}

@end
