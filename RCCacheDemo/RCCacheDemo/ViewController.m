//
//  ViewController.m
//  RCCacheDemo
//
//  Created by 孙承秀 on 2018/6/26.
//  Copyright © 2018年 RongCloud. All rights reserved.
//

#import "ViewController.h"
#import <RCCache/RCCache.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *value = @"i am value";
    NSString *key = @"key1";
    RCDataCache *cache = [RCDataCache cacheWithName:@"RCCacheName"];
    [cache setObject:value forKey:key];
    NSLog(@"value is :%d",[cache containObjectForKey:key]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
