//
//  RCUserInfo.m
//  RCCacheDemo
//
//  Created by 孙承秀 on 2018/7/3.
//  Copyright © 2018年 RongCloud. All rights reserved.
//

#import "RCUserInfo.h"

@implementation RCUserInfo
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.address forKey:@"address"];
    [aCoder encodeInt:self.age forKey:@"age"];
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.address = [aDecoder decodeObjectForKey:@"address"];
    self.age = [aDecoder decodeIntForKey:@"age"];
    return self;
}
@end
