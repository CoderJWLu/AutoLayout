//
//  CellViewController.m
//  登录注册
//
//  Created by 陆俊伟 on 16/1/4.
//  Copyright © 2016年 陆俊伟. All rights reserved.
//

#import "CellViewController.h"
#import "TableViewCell.h"

@interface CellViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *dataArr;

@end

@implementation CellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //  产生20个随机的长度的字符串
    [self randomContent];
    
    
    //  自适应高度的两必设属性
    self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = UITableViewAutomaticDimension;

    
//    self.tableView.rowHeight = 50;
    
//    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"cell111"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark--代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell111"];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:nil options:nil] firstObject];
    }
    cell.contentLabel.text = self.dataArr[indexPath.row];
    return cell;
}

- (NSMutableArray *)dataArr
{
    if (!_dataArr) {
        self.dataArr = [NSMutableArray array];
    }
    return _dataArr;
}

- (void) randomContent
{
    for (int i = 0; i < 20; i++) {
        NSMutableString *str = [[NSMutableString alloc] init];
        int x = arc4random()%arc4random()%21+10;
        for (int j = 0; j < x; j++) {
            [str appendString:@"内容"];
        }
        [self.dataArr addObject:str];
    }
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
