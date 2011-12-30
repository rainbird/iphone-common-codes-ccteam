//
//  CCUIAlertView.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIAlertView.h"


@implementation UIAlertView(cc)

// 显示消息框
+ (UIAlertView *)showAlertView:(NSString *)title
                           msg:(NSString *)msg 
                      delegate:(id)delegate
                     okBtnTitle:(NSString *)okTitle
{
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:title
						  message:msg
						  delegate:delegate
						  cancelButtonTitle:nil
						  otherButtonTitles:okTitle, nil];
	[alert show];
	[alert release];
    
	return alert;
}

@end
