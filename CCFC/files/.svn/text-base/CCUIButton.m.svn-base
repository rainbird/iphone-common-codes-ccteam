//
//  CCUIButton.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIButton.h"


@implementation UIButton(cc)

// 创建UIButton, 文本居中显示
+ (UIButton *)createButton:(const CGRect *)rect withTitle:(NSString *)title
{
    return [UIView createButton:rect withTitle:title];
}

- (void)setTitle:(NSString *)title
{
    [self setTitle:title forState:UIControlStateNormal];
}


- (void)setTitleColor:(UIColor *)color
{
    [self setTitleColor:color forState:UIControlStateNormal];
}

// 设置UIButton的背景图片
- (void)setButtonBgImg:(NSString *)normalBgImg 
    withHighlightedImg:(NSString *)highLightBgImg
{
	UIImage *buttonImageNomal = [UIImage imageNamed:normalBgImg];
	[self setBackgroundImage:buttonImageNomal forState:UIControlStateNormal];
    
	UIImage *buttonImageHighLight = [UIImage imageNamed:highLightBgImg];
	[self setBackgroundImage:buttonImageHighLight forState:UIControlStateHighlighted];
}


@end
