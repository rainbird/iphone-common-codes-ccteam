//
//  CCUITextField.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUITextField.h"


@implementation UITextField(cc)

// create a common textField
+ (UITextField *)createCommonTextField:(CGRect)rect
{
	UITextField *textField = [[UITextField alloc] initWithFrame:rect];
	textField.backgroundColor = [UIColor whiteColor];
	return [textField autorelease];
}

// set the clear button status
- (void)addClearButton
{
	[self setClearButtonMode:UITextFieldViewModeAlways];
}

@end
