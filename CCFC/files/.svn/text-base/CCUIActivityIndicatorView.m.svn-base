//
//  CCUIActivityIndicatorView.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIActivityIndicatorView.h"


@implementation UIActivityIndicatorView(cc)

//创建系统等待状态图标
+ (UIActivityIndicatorView *)createActivityIndicatorView:(CGRect)rect
{	
	UIActivityIndicatorView *waitingIcon = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
	waitingIcon.frame = rect;
    
	return [waitingIcon autorelease];
}

//显示系统的昂带状态图标
- (void)show
{
	self.hidden = NO;
	[self startAnimating]; 
}

//隐藏系统的昂带状态图标
- (void)hide
{
	self.hidden = YES;
	[self stopAnimating];
}

@end
