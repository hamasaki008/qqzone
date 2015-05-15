//
//  LJMessage.h
//  QQchat
//
//  Created by 刘俊 on 15/5/15.
//  Copyright (c) 2015年 刘俊. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum{
    LJMessageMe = 0,
    LJMessageOther
    
}LJMessageType;
@interface LJMessage : NSObject


@property (nonatomic,weak) NSString *time;
@property (nonatomic,weak) NSString *text;
@property (nonatomic,assign) LJMessageType type;

-(instancetype)initWithDict:(NSDictionary*)dict;

+(instancetype)messageWithDict:(NSDictionary*)dict;

@end
