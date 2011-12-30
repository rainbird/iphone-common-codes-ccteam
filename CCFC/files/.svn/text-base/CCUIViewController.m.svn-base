//
//  CCUIViewController.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUIViewController.h"


@implementation UIViewController(cc)

- (UIBarButtonItem *)addLeftBarButtonItem:aTitle
									style:(UIBarButtonItemStyle)style
								   target:(id)target 
								   action:(SEL)sel 
{
	UIBarButtonItem *barButtonItem = 
			[[UIBarButtonItem alloc] initWithTitle:aTitle
											 style:style
											target:target
											action:sel];
	self.navigationItem.leftBarButtonItem = barButtonItem;
	[barButtonItem release];
	
	return barButtonItem;
}

- (UIBarButtonItem *)addRightBarButtonItem:aTitle
									 style:(UIBarButtonItemStyle)style
									target:(id)target 
									action:(SEL)sel
{
	UIBarButtonItem *barButtonItem = 
			[[UIBarButtonItem alloc] initWithTitle:aTitle
											 style:style
											target:target
											action:sel];
	self.navigationItem.rightBarButtonItem = barButtonItem;
	[barButtonItem release];
	
	return barButtonItem;
}


- (UIView *)setLoadView
{
	CGRect rect = [[UIScreen mainScreen] applicationFrame];
	UIView *view = [[UIView alloc] initWithFrame:rect];
	self.view = view;
	return view;
}

@end
