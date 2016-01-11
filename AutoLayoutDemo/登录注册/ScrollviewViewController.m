//
//  ScrollviewViewController.m
//  登录注册
//
//  Created by 陆俊伟 on 16/1/4.
//  Copyright © 2016年 陆俊伟. All rights reserved.
//

#import "ScrollviewViewController.h"
#import "PureLayout.h"

@interface ScrollviewViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ConstraintHeight;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIView *contentView;
@end

@implementation ScrollviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.ConstraintHeight autoRemove];
    self.ConstraintHeight = [self.contentView autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.scrollView withMultiplier:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
