//
//  CCLanguage.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCLanguage.h"


@implementation CCLanguage

// 获取系统当前使用的本地化语言
+ (NSString *)getSystemLanguage
{
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    NSArray *languages = [defs objectForKey:@"AppleLanguages"];
    if([languages count])
        return [languages objectAtIndex:0];
    else
        return @"";
}

@end
