//
//  DemoViewController.m
//  YMTextView
//
//  Created by mimi on 16/7/27.
//  Copyright © 2016年 mimi. All rights reserved.
//

#import "DemoViewController.h"
#import "NSString+MD5.h"
#import "UIView+YMExtension.h"
#import "Person.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

//知识为了简便自己平时的开发,知识都很简单
- (void)viewDidLoad {
    [super viewDidLoad];

    //单例
    [self singleton];
    //view的简洁点语法
    [self viewSet];
    //MD5加密
    [self getMD5String];

}
//单例
-(void)singleton{
    //创建两个对象,打印地址
    Person* p1 = [Person new];
    
    Person* p2 = [Person new];
    
    NSLog(@"p1 = %@ \np2 = %@",p1,p2);
}
 //view的简洁点语法
-(void)viewSet{
    
    UIView* view = [[UIView alloc]init];
    view.x = 100;
    view.y = 100;
    view.width = 100;
    view.height = 100;
    view.backgroundColor = [UIColor brownColor];
    [self.view addSubview:view];
}

-(void)getMD5String{
    //原始数据
    NSString* dataString = @"测试";
    //加密后的MD5字符串
    NSString * mdString = [NSString MD5ForLower32Bate:dataString];
    NSLog(@"%@",mdString);
}

@end














