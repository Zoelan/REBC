//
//  Model.h
//  REBC-demo2
//
//  Created by zoe on 2017/12/5.
//  Copyright © 2017年 zoe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property(nonatomic,copy)NSString *location;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *time;
@property(nonatomic,copy)NSString *currentPrice;
@property(nonatomic,copy)NSString *lastQuaterPrice;
- (instancetype)initWithDictionary:(NSDictionary *)dict;

+ (instancetype)REBCWithDictionary:(NSDictionary *)dict;

@end
