//
//  ViewController.m
//  RCCacheDemo
//
//  Created by 孙承秀 on 2018/6/26.
//  Copyright © 2018年 RongCloud. All rights reserved.
//

#import "ViewController.h"
#import <RCCache/RCCache.h>
#import "RCUserInfo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *value = @"i am value";
    NSString *key = @"key1";
    RCDataCache *cache = [RCDataCache cacheWithName:@"RCCacheName"];
    cache.diskCache.threshold = 0;
    [cache setObject:value forKey:key];
    NSLog(@"value is :%@",[cache.memoryCache objectForKey:key]);
    NSLog(@"value is :%@",[cache.diskCache objectForKey:key]);
//    [cache removeObjectForKey:key];
//    [cache removeAllObjects];
//    NSLog(@"value is :%@",[cache.memoryCache objectForKey:key]);
//    NSLog(@"value is :%@",[cache.diskCache objectForKey:key]);
    NSLog(@"value is :%d",[cache containObjectForKey:key]);
    NSLog(@"value is :%d",[cache.memoryCache containObjectForKey:key]);
    NSLog(@"value is :%d",[cache.diskCache containObjectForKey:key]);
    RCUserInfo *info = [RCUserInfo new];
    info.name = @"sunchengxiu";;
    info.address = @"dalian";
    info.age = 25;
    
    [cache.diskCache setCustomArchiveBlock:^NSData * _Nonnull(id  _Nonnull object) {
        NSString *name = [NSString stringWithFormat:@"luban"];
        return [name dataUsingEncoding:NSUTF8StringEncoding];
    }];
    [cache.diskCache setCustomUnArchiveBlock:^id _Nonnull(NSData * _Nonnull data) {
        RCUserInfo *userInfo = [RCUserInfo new];
        userInfo.name = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        userInfo.address = @"召唤师峡谷";
        userInfo.age = 18;
        return userInfo;
    }];
    [cache setObject:info forKey:@"userInfo"];
//    [cache.diskCache ];
    RCUserInfo *info1 = (RCUserInfo *)[cache.diskCache objectForKey:@"userInfo"];
    NSLog(@"%@",[cache.memoryCache totalLimitCount]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
