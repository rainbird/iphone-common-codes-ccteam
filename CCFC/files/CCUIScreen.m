//
//  CCUIScreen.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIScreen.h"


@implementation UIScreen(cc)

- (CGFloat)width
{
    return [[UIScreen mainScreen] bounds].size.width;
}

- (CGFloat)height
{
    return [[UIScreen mainScreen] bounds].size.height;
}

- (CGFloat)appWidth
{
    return [[UIScreen mainScreen] applicationFrame].size.width;
}

- (CGFloat)appHeight
{
    return [[UIScreen mainScreen] applicationFrame].size.height;
}

@end
