//
//  VXXDownloaderManager.m
//  网络下载Demo
//
//  Created by Volitation小星 on 16/10/9.
//  Copyright © 2016年 Volitation小星. All rights reserved.
//

#import "VXXDownloaderManager.h"

@implementation VXXDownloaderManager

static VXXDownloaderManager* instance;

+(instancetype)shareDownloaderManager{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //初始化下载管理者
        if (instance == nil) {
            instance = [VXXDownloaderManager new];
            instance.downloadArr = [NSMutableArray new];
            instance.maxDownloadCount = 10;
        }
    });
    
    return instance;
}

@end
