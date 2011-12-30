//
//  CCUIApplication.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIApplication.h"


@implementation UIApplication(cc)


- (void)showStatusBar
{
	[self setStatusBarHidden:FALSE];
}

- (void)hideStatusBar
{
	[self setStatusBarHidden:TRUE];
}

- (void)showNetworkActivityInStatusBar
{
	self.networkActivityIndicatorVisible = YES;
}

- (void)hideNetworkActivityInStatusBar
{
	self.networkActivityIndicatorVisible = NO;
}

- (BOOL)getStatusBarNetworkActivityStatus
{
	return [self isNetworkActivityIndicatorVisible];
}

// 退出应用程序
- (void)terminate:(int)exitCode
{
	exit(exitCode);
}

// open another application
// the anotherAppScheme argument is like "calculator:" which is defined in info.plist file 
+ (BOOL)openAnotherApp:(NSString *)anotherAppScheme
{
	NSURL *url = [NSURL URLWithString:anotherAppScheme];
	return [[UIApplication sharedApplication] openURL:url];
}

// open a url
+ (BOOL)openUrl:(NSString *)url
{
	return [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}


@end
