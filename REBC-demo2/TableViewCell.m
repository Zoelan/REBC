//
//  TableViewCell.m
//  REBC-demo2
//
//  Created by zoe on 2017/12/5.
//  Copyright © 2017年 zoe. All rights reserved.
//

#import "TableViewCell.h"
#import "Model.h"
#import "Masonry.h"

@interface TableViewCell ()

@property (nonatomic,strong) UILabel *location;
@property (nonatomic,strong) UILabel *title;
@property (nonatomic,strong) UILabel *time;
@property (nonatomic,strong) UIImageView *arrow;
@property (nonatomic,strong) UILabel *currentPrice;
@property (nonatomic,strong) UILabel *lastQuaterPrice;


@end

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}



-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
        [self createView];
        
    }
    return self;
}


- (void) createView{
    
    self.location = [[UILabel alloc]init];
    self.location.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.location];
    
    self.title = [[UILabel alloc]init];
    self.title.textColor = [UIColor blackColor];
    [self.contentView addSubview:self.title];
    
    self.arrow = [[UIImageView alloc]init];
    [self.contentView addSubview:self.arrow];
    
    self.time = [[UILabel alloc]init];
    [self.contentView addSubview:self.time];
    
    self.currentPrice = [[UILabel alloc]init];
    [self.contentView addSubview:self.currentPrice];
    
    self.lastQuaterPrice = [[UILabel alloc]init];
    [self.contentView addSubview:self.lastQuaterPrice];
}

-(void)setModel:(Model *)model
{
    _model = model;
    
    self.location.text = model.location;
    self.title.text = model.title;
    self.time.text = model.time;
    self.currentPrice.text = model.currentPrice;
    self.lastQuaterPrice.text = model.currentPrice;
    if (model.currentPrice > model.lastQuaterPrice) {
        self.arrow.image = [UIImage imageNamed:@"arrpwup"];
    }
    else self.arrow.image = [UIImage imageNamed:@"arrowdown"];
    [self setViewAutoLayOut];
}

- (void) setViewAutoLayOut{
    [self.location mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(@45);
        make.left.equalTo(@65);
        make.height.equalTo(@40);
        make.width.equalTo(@225);
    }];
    [self.title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@45);
        make.left.equalTo(@310);
        make.height.equalTo(@40);
    }];
    [self.time mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@275);
        make.left.equalTo(@125);
        make.height.equalTo(@25);
    }];
    [self.arrow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@183);
        make.left.equalTo(@163);
        make.height.equalTo(@87);
    }];
    [self.currentPrice mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@205);
        make.left.equalTo(@545);
        make.height.equalTo(@44);
    }];
    [self.lastQuaterPrice mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@205);
        make.left.equalTo(@948);
        make.height.equalTo(@44);
    }];
}



@end
