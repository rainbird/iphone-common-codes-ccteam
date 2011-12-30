//
//  CCUITextView.m
//  CCFC
//
//  Created by xichen on 11-12-22.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUITextView.h"
#import "CCUIView.h"
#import "CCLog.h"

@implementation UITextView(cc)

+ (UITextView *)createCommonTextView:(CGRect)rect withText:(NSString *)text
{
	UITextView *textView = [[UITextView alloc] initWithFrame:rect];
	textView.backgroundColor = [UIColor whiteColor];
	textView.textColor = [UIColor blackColor];
	textView.text = text;
	textView.editable = NO;
	
	return [textView autorelease];
}

// get the row count of a textView's text	// nearly ok
- (int)getTextRows
{
	CGSize size = [self.text sizeWithFont:self.font
						constrainedToSize:CGSizeMake(self.width, UINT_MAX)
							lineBreakMode:UILineBreakModeWordWrap]; 
	LOG_SIZE(size);
	CGSize tempSize = [self.text sizeWithFont:self.font];
	LOG_SIZE(tempSize);
	
	return (int)ceil(size.height / tempSize.height);
}

@end
