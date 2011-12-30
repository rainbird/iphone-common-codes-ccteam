//
//  CCUIAlertView.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIAlertView(cc)
    
// 显示消息框
+ (UIAlertView *)showAlertView:(NSString *)title
                           msg:(NSString *)msg 
                      delegate:(id)delegate
                    okBtnTitle:(NSString *)okTitle;
    

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS

- (void)setBodyText:(id)text;		// set the text of the body
- (void)setTaglineText:(id)text;	// set the text that under the message

- (void)setSubtitle:(id)title;		// set the subtitle
- (id)subtitle;						// get the subtitle

- (id)bodyText;						// get the body text
- (void)setTitleMaxLineCount:(int)count;	// set the max row count of the title
- (int)titleMaxLineCount;					// get the max row count of the title
- (void)setBodyTextMaxLineCount:(int)count;	// set the max row count of the body
- (int)bodyMaxLineCount;					// get the max row count of the body

// add a textfield 
- (id)addTextFieldWithValue:(NSString *)str label:(id)label;

// returns the textfield of the index
- (id)textFieldAtIndex:(int)index;
- (int)textFieldCount;		// the count of the textfields
- (id)textField;			// add only one textfield

// show the alertView over the indicated type
// eg, pass the type as 1, the show animation is from right to left.
- (void)showWithAnimationType:(int)type;

#endif

@end
