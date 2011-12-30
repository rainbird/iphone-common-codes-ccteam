//
//  CCUIActionSheet.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIActionSheet(cc)

// create a common actionsheet
+ (UIActionSheet *)createCommonActionsheet:(NSString *)aTitle
							cancelBtnTitle:(NSString *)cancelBtnTitle
						  destructBtnTitle:(NSString *)destructBtnTitle
								showInView:(UIView *)view;

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS
- (void)setMessage:(NSString *)msg;			// set the message content
- (NSString *)message;						// get the message content
- (void)setDefaultButtonIndex:(int)index;	// set the index of the destructiveButton
- (int)defaultButtonIndex;					// get the index of the destructiveButton
#endif

@end
