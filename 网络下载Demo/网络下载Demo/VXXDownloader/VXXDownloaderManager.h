//
//  VXXDownloaderManager.h
//  网络下载Demo
//
//  Created by Volitation小星 on 16/10/9.
//  Copyright © 2016年 Volitation小星. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VXXDownloaderManager : NSObject


+(instancetype)shareDownloaderManager;

//下载任务的总数组
@property (strong,nonatomic) NSMutableArray* downloadArr;


//最大下载数量 默认是10
@property (assign,nonatomic) NSInteger maxDownloadCount;


//添加一个下载任务
//返回是否添加成功了
-(BOOL)addDownloadTaskWithURLString:(NSString*)urlString;

@end
