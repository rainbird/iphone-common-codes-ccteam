//
//  CCUINavigationBar.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUINavigationBar.h"
#import "CCConfig.h"

// 如果你希望可以自定义UINavigationBar的显示，那么ENABLE_UINAVIGATION_BAR_REDRAW被设置成1，否则设置成0
#if ENABLE_UINAVIGATION_BAR_REDRAW

@implementation UINavigationBar (CustomImage)  

// 自定义UINavigationBar的显示
- (void)drawRect:(CGRect)rect 
{  
    UIImage *image = [UIImage imageNamed: @"header.png"]; // header.png是对应于应用程序中显示导航栏背景的图片
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];  
}

@end 

#endif
