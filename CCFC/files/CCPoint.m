//
//  CCPoint.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCPoint.h"
#import "CCCommon.h"
#import "CCNSNumber.h"

@implementation CCPoint


- (id)initWithX:(CGFloat)aX withY:(CGFloat)aY
{
	COMMON_INIT_BEGIN
	
	x = aX;
	y = aY;
	
	COMMON_INIT_END
}

+ (id)pointWithX:(CGFloat)aX withY:(CGFloat)aY
{
	CCPoint *p = [[CCPoint alloc] initWithX:aX withY:aY];
	if(p == nil)
		return nil;
	
	return [p autorelease];
}

- (id)initWithCGPoint:(CGPoint)point
{
	COMMON_INIT_BEGIN
	
	x = point.x;
	y = point.y;
	
	COMMON_INIT_END
}

+ (id)pointWithCGPoint:(CGPoint)point
{
	CCPoint *p = [[CCPoint alloc] initWithCGPoint:point];
	if(p == nil)
		return nil;

	return [p autorelease];
}

- (void)dealloc
{
	[super dealloc];
}


- (BOOL)isEqualTo:(CCPoint *)anotherPoint
{
	return (FLOAT_EQUAL_TO_FLOAT(x, anotherPoint->x)
		 && FLOAT_EQUAL_TO_FLOAT(y, anotherPoint->y));
}

- (BOOL)isEqualToCGPoint:(CGPoint)point
{
	return (FLOAT_EQUAL_TO_FLOAT(x, point.x)
		 && FLOAT_EQUAL_TO_FLOAT(y, point.y));
}

- (BOOL)isZero
{
	return (FLOAT_EQUAL_TO_ZERO(x) && FLOAT_EQUAL_TO_ZERO(y)); 
}


- (void)setX:(CGFloat)newX withY:(CGFloat)newY
{
	x = newX;
	y = newY;
}

- (BOOL)isInRect:(CGRect)rect
{
	CGFloat rectX = rect.origin.x;
	CGFloat rectY = rect.origin.y;
	CGFloat rectWidth = rect.size.width;
	CGFloat rectHeight = rect.size.height;
	
	if(x < rectX 
       ||(x > rectX + rectWidth)
       || y < rectY
       || y > rectY + rectHeight)
	{
		return FALSE;
	}
	
	return TRUE;
}

//判断某个点是否在某个区域里
+ (BOOL)isInRect:(CGPoint)p rect:(CGRect)rect
{
	CGFloat rectX = rect.origin.x;
	CGFloat rectY = rect.origin.y;
	CGFloat rectWidth = rect.size.width;
	CGFloat rectHeight = rect.size.height;
	
	CGFloat pX = p.x;
	CGFloat pY = p.y;
	
	if(pX < rectX 
       ||(pX > rectX + rectWidth)
       || pY < rectY
       || pY > rectY + rectHeight)
	{
		return FALSE;
	}
	
	return TRUE;
}

- (CGPoint)toCGPoint
{
	return CGPointMake(x, y);
}

// get the distance of two CCPoint
- (CGFloat)distanceToCCPoint:(CCPoint *)anotherPoint
{
	return sqrt((x - anotherPoint->x) * (x - anotherPoint->x)
				+ (y - anotherPoint->y) * (y - anotherPoint->y));
}

@end
