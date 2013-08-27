//
//  Demo.m
//  AFNETTEST
//
//  Created by hesh on 13-8-27.
//  Copyright (c) 2013年 ilikeido. All rights reserved.
//

#import "Demo.h"
#import "NSObject+EasyCopy.h"
@interface Base : NSObject

@property(nonatomic,strong) NSString *p1;
@property(nonatomic,assign) int p2;

@end

@implementation Base

@end

@interface A : Base

@property(nonatomic,strong) NSString *name;

@property(nonatomic,assign) int age;

@end

@implementation A

@end


@interface B : Base

@property(nonatomic,strong) NSString *name;

@property(nonatomic,assign) int age;

@property(nonatomic,assign) int other;

@end

@implementation B


@end

@implementation Demo

-(void)test{
    A *a = [[A alloc]init];
    a.p1 = @"basevalue";
    a.p2 = 2;
    a.name = @"A";
    a.age = 12;
    B *b = [[B alloc]init];
    [a easyDeepCopy:b];
    NSLog(@"base p1:%@ , base p2:%d, name:%@,age:%d,other:%d",b.p1,b.p2,b.name,b.age,b.other);
}

@end
