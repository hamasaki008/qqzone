//
//  ViewController.m
//  QQchat
//
//  Created by 刘俊 on 15/5/14.
//  Copyright (c) 2015年 刘俊. All rights reserved.
//

#import "ViewController.h"
#import "LJMessage.h"
#import "LJMessageCell.h"

@interface ViewController ()<UITableViewDataSource,UITabBarDelegate>
@property (nonatomic,strong) NSMutableArray *messages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  
}

-(NSMutableArray *)messages{
    
    if (_messages == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"messages.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        for (NSDictionary *dict in array) {
            LJMessage * message = [LJMessage messageWithDict:dict];
            [_messages addObject:message];
        }
        

    }
    return _messages;
}



#pragma mark - tableview数据源方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.messages.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LJMessageCell *cell = [LJMessageCell messageCellWithTableView:tableView];
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
