//
//  ViewController.m
//  网络下载Demo
//
//  Created by Volitation小星 on 16/10/8.
//  Copyright © 2016年 Volitation小星. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "VXXDownloaderManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIButton *beginDownload;

@property (strong,nonatomic) VXXDownloaderManager* dm;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dm = [VXXDownloaderManager shareDownloaderManager];
    
}

- (IBAction)onBtnClicked:(UIButton *)sender {
    //添加一个下载项目
    NSString* urlString = @"http://120.26.110.52:10000/PubServer/gif/expression.zip";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark- tableView数据源方法


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dm.downloadArr.count;
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString* const cellID = @"cellID";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    return cell;
}



@end
