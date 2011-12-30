//
//  CCUIColor.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define	RGB_MAX_VALUE	255.0f

#define RGBA(r, g, b, a)    \
        [UIColor colorWithRed:(r)/RGB_MAX_VALUE		\
                        green:(g)/RGB_MAX_VALUE		\
                         blue:(b)/RGB_MAX_VALUE		\
                        alpha:(a)]

#define HSBA(h, s, b, a)    \
		[UIColor colorWithHue:(h)/RGB_MAX_VALUE		\
				   saturation:(s)/RGB_MAX_VALUE		\
				   brightness:(b)/RGB_MAX_VALUE		\
						alpha:(a)]


#define	COLOR_RED		[UIColor colorWithRed:1.0f green:0 blue:0 alpha:1]
#define	COLOR_GREEN		[UIColor colorWithRed:0 green:1.0f blue:0 alpha:1]
#define	COLOR_BLUE		[UIColor colorWithRed:0 green:0 blue:1.0f alpha:1]

#define	COLOR_BLACK		[UIColor colorWithRed:0 green:0 blue:0 alpha:1]
#define	COLOR_WHITE		[UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1]

// 透明颜色
#define	COLOR_CLEAR		[UIColor clearColor]


@interface UIColor(cc) 

// 获取UIColor的RGBA的值
- (void)getRGBAValue:(CGFloat *)red 
               green:(CGFloat *)green 
                blue:(CGFloat *)blue 
               alpha:(CGFloat *)alpha;

- (CGFloat)getRedValue;
- (CGFloat)getGreenValue;
- (CGFloat)getBlueValue;
- (CGFloat)getAlphaValue;

// 由RGB的值获得CGColorRef指针
+ (CGColorRef)createCGColorRefByRGB:(CGFloat)red 
                              green:(CGFloat)green 
                               blue:(CGFloat)blue 
                              alpha:(CGFloat)alpha;

// print the RGBA info of the UIColor
- (void)printRGBA;


@end
