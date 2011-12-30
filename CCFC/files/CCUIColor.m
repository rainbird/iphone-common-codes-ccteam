//
//  CCUIColor.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIColor.h"


@implementation UIColor(cc)

// 获取UIColor的RGBA的值
- (void)getRGBAValue:(CGFloat *)red 
               green:(CGFloat *)green 
                blue:(CGFloat *)blue 
               alpha:(CGFloat *)alpha
{
	CGColorRef colorRef = [self CGColor];
	
	const CGFloat *tmComponents = CGColorGetComponents(colorRef);
	if(red)
		*red = tmComponents[0];

	if(green)
		*green = tmComponents[1];
    
	if(blue)
		*blue = tmComponents[2];

	if(alpha)
		*alpha = tmComponents[3];
}

- (CGFloat)getRedValue
{
	CGColorRef colorRef = [self CGColor];
	
	const CGFloat *tmComponents = CGColorGetComponents(colorRef);
	return tmComponents[0];
}

- (CGFloat)getGreenValue
{
	CGColorRef colorRef = [self CGColor];
	
	const CGFloat *tmComponents = CGColorGetComponents(colorRef);
	return tmComponents[1];
}

- (CGFloat)getBlueValue
{
	CGColorRef colorRef = [self CGColor];
	
	const CGFloat *tmComponents = CGColorGetComponents(colorRef);
	return tmComponents[2];
}

- (CGFloat)getAlphaValue
{
	CGColorRef colorRef = [self CGColor];
	
	const CGFloat *tmComponents = CGColorGetComponents(colorRef);
	return tmComponents[3];
}

// 由RGB的值获得CGColorRef指针
// you should release the returnValue by your hand.
+ (CGColorRef)createCGColorRefByRGB:(CGFloat)red 
                              green:(CGFloat)green 
                               blue:(CGFloat)blue 
                              alpha:(CGFloat)alpha
{
	CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
	const CGFloat rgbColor[] = {(float)red / 255, (float)green / 255 , (float) blue / 255, (float) alpha / 255};
	CGColorRef color = CGColorCreate(rgb, rgbColor);
	CGColorSpaceRelease(rgb);
	
	return color;
}

// print the RGBA info of the UIColor
- (void)printRGBA
{
	CGColorRef colorRef = [self CGColor];
	const CGFloat *tmComponents = CGColorGetComponents(colorRef);
	NSLog(@"%@ R:%f, G:%f, B:%f, A:%f", 
		  self, tmComponents[0], tmComponents[1], tmComponents[2], tmComponents[3]);
}

@end
