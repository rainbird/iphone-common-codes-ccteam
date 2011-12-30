//
//  CCUIViewController.h
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define	MACRO_COMMON_LOAD_VIEW		\
		- (void)loadView			\
		{							\
			[super loadView];		\
			CGRect rect = [[UIScreen mainScreen] applicationFrame];		\
			UIView *view = [[UIView alloc] initWithFrame:rect];			\
			self.view = view;	\
		}

@interface UIViewController(cc)

- (UIBarButtonItem *)addLeftBarButtonItem:aTitle
									style:(UIBarButtonItemStyle)style
								   target:(id)target 
								   action:(SEL)sel;

- (UIBarButtonItem *)addRightBarButtonItem:aTitle
									 style:(UIBarButtonItemStyle)style
									target:(id)target 
									action:(SEL)sel;

- (UIView *)setLoadView;

@end
