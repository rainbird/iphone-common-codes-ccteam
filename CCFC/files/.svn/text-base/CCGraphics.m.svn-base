//
//  CCGraphics.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCGraphics.h"


@implementation CCGraphics

// 画弧形
+ (void)drawArc:(CGContextRef)ctx 
         radius:(CGFloat)radius 
              x:(CGFloat)x 
              y:(CGFloat)y 
       startArc:(CGFloat)startArc 
         endArc:(CGFloat)endArc
      clockWise:(int)clockWise
          color:(UIColor *)color
{	
	CGContextMoveToPoint(ctx, x, y);
	CGContextAddArc(ctx, x, y, radius, startArc, endArc, clockWise);
	
	CGContextSetRGBFillColor(ctx, 
							 [color getRedValue],
							 [color getGreenValue],
							 [color getBlueValue],
							 [color getAlphaValue]);
	CGContextFillPath(ctx);
}


@end
