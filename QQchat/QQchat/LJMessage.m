//
//  LJMessage.m
//  QQchat
//
//  Created by 刘俊 on 15/5/15.
//  Copyright (c) 2015年 刘俊. All rights reserved.
//

#import "LJMessage.h"

@implementation LJMessage
-(instancetype)initWithDict:(NSDictionary*)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)messageWithDict:(NSDictionary*)dict{
    
    return [[self alloc] initWithDict:dict];
}
@end
