//
//  HeadView.m
//  REBC-demo2
//
//  Created by zoe on 2017/12/5.
//  Copyright © 2017年 zoe. All rights reserved.
//

#import "HeadView.h"

@implementation HeadView

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UILabel *red = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 10, 50)];
        red.backgroundColor = [UIColor colorWithRed:1 green:97.0/255.0 blue:109.0/255.0 alpha:1.0];
        [self addSubview:red];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(30, 0, self.frame.size.width, 50)];
        label.text = @"关注";
        label.textAlignment = NSTextAlignmentLeft;
        label.textColor = [UIColor blackColor];
        label.backgroundColor = [UIColor whiteColor];
        [self addSubview:label];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
