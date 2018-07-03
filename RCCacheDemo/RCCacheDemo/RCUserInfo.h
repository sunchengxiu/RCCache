//
//  RCUserInfo.h
//  RCCacheDemo
//
//  Created by 孙承秀 on 2018/7/3.
//  Copyright © 2018年 RongCloud. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RCUserInfo : NSObject<NSCoding>
/**
 name
 */
@property(nonatomic , copy)NSString *name;
/**
 address
 */
@property(nonatomic , copy)NSString *address;
/**
 age
 */
@property(nonatomic , assign)int age;
@end
