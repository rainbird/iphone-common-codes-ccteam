//
//  CCUIActionSheet.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUIActionSheet.h"


@implementation UIActionSheet(cc)

// create a common actionsheet
+ (UIActionSheet *)createCommonActionsheet:(NSString *)aTitle
							cancelBtnTitle:(NSString *)cancelBtnTitle
						  destructBtnTitle:(NSString *)destructBtnTitle
								showInView:(UIView *)view
{
	UIActionSheet *actionSheet = [[UIActionSheet alloc] 
								  initWithTitle:aTitle
									   delegate:self
							  cancelButtonTitle:cancelBtnTitle
						 destructiveButtonTitle:destructBtnTitle
							  otherButtonTitles:nil];
	[actionSheet showInView:view];
	[actionSheet release];
	return actionSheet;
}

@end
