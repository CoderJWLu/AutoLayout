//
//  JWTableViewController.m
//  登录注册
//
//  Created by 陆俊伟 on 16/1/4.
//  Copyright © 2016年 陆俊伟. All rights reserved.
//

#import "JWTableViewController.h"
#import "LoginViewController.h"
#import "PhotoSpacingViewController.h"
#import "AspectRatioViewController.h"
#import "ScrollviewViewController.h"
#import "CellViewController.h"



@interface JWTableViewController ()

@property (nonatomic, strong) NSArray *cellArr;

@end

@implementation JWTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"xxx"];
    self.navigationController.navigationBar.translucent = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark--tableView的代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cellArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"xxx" forIndexPath:indexPath];
    cell.textLabel.text = self.cellArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //  判断推出的是哪个控制器
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"loginsegue" sender:indexPath];
            break;
        
        case 1:
            [self performSegueWithIdentifier:@"photo" sender:indexPath];
            break;
            
        case 2:
            [self performSegueWithIdentifier:@"ratio" sender:indexPath];
            break;
            
        case 3:
            [self performSegueWithIdentifier:@"cellView" sender:indexPath];
            break;
            
        case 4:
            [self performSegueWithIdentifier:@"scrollView" sender:indexPath];
            break;
            
        default:
            break;
    }
}


- (NSArray *)cellArr
{
    if (!_cellArr) {
        self.cellArr = @[@"Register/Login", @"photoSpacing", @"AspectRatio",  @"TableViewCellAutomaticHeight",@"scrollViewAutoLayout"];
    }
    return _cellArr;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

#pragma mark--用来接收页面跳转的参数
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
//    LoginViewController *vc = segue.destinationViewController;
//    vc.username = self.title;
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
}


@end
