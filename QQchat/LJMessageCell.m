//
//  LJMessageCell.m
//  QQchat
//
//  Created by 刘俊 on 15/5/15.
//  Copyright (c) 2015年 刘俊. All rights reserved.
//

#import "LJMessageCell.h"
@interface LJMessageCell()
@property (nonatomic,weak) UILabel *timelabel;
@property (nonatomic,weak) UIImageView *iconView;
@property (nonatomic,weak) UIButton *textlabel;
@end

@implementation LJMessageCell

+(instancetype)messageCellWithTableView:(UITableView*)tableview{
    static NSString *ID = @"messageCell";
    LJMessageCell *cell = [tableview dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
        
    }
    return cell;
    
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //时间
        UILabel *timelabel = [[UILabel alloc]init];
        [self.contentView addSubview:timelabel];
        self.timelabel = timelabel;
        //头像
        UIImageView *iconView = [[UIImageView alloc]init];
        [self.contentView addSubview:iconView];
        self.iconView = iconView;
        //文字内容
        UIButton *textlabel = [[UIButton alloc]init];
        [self.contentView addSubview:textlabel];
        self.textlabel = textlabel;
        
        
        
    }
    
    
    return self;
    
}





@end
