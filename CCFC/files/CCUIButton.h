//
//  CCUIButton.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCUIView.h"

@interface UIButton(cc)
    
// 创建UIButton, 文本居中显示
+ (UIButton *)createButton:(const CGRect *)rect withTitle:(NSString *)title;

- (void)setTitle:(NSString *)title;
- (void)setTitleColor:(UIColor *)color;

// 设置UIButton的背景图片
- (void)setButtonBgImg:(NSString *)normalBgImg 
    withHighlightedImg:(NSString *)highLightBgImg;

#if CC_ENABLE_PUBLIC_API_EXTEND 
- (id)buttonWithType:(int)type;	// you can pass argument by 100 or 114 and so on
#endif

@end
