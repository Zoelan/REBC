//
//  Model.m
//  REBC-demo2
//
//  Created by zoe on 2017/12/5.
//  Copyright © 2017年 zoe. All rights reserved.
//

#import "Model.h"

@implementation Model

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.location = dict[@"location"];
        self.title = dict[@"title"];
        self.time = dict[@"time"];
        self.currentPrice = dict[@"currentPrice"];
        self.lastQuaterPrice = dict[@"lastQuaterPrice"];
    }
    return self;
}

+ (instancetype)REBCWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}


@end
