//
//  CCUIActivityIndicatorView.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIActivityIndicatorView(cc)

//创建系统等待状态图标
+ (UIActivityIndicatorView *)createActivityIndicatorView:(CGRect)rect;

//显示系统的昂带状态图标
- (void)show;

//隐藏系统的昂带状态图标
- (void)hide;

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS
- (void)setAnimationDuration:(double)seconds;	// set the seconds that the animation lasts for one cycle
- (void)setStyle:(int)style;					// set the style
#endif

@end
