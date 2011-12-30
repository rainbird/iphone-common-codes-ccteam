//
//  CCRect.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCRect.h"
#import "CCCommon.h"
#import "CCNSNumber.h"

@implementation CCRect

- (id)initWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height
{
	COMMON_INIT_BEGIN
	
	origin.x = x;
	origin.y = y;
	size.width = width;
	size.height = height;
	
	COMMON_INIT_END
}

- (id)initWithOrigin:(CGPoint)aOrigin size:(CGSize)aSize
{
	COMMON_INIT_BEGIN
	
	origin = aOrigin;
	size = aSize;
	
	COMMON_INIT_END
}

- (id)initWithCGRect:(CGRect)rect
{
	COMMON_INIT_BEGIN
	
	origin = rect.origin;
	size = rect.size;
	
	COMMON_INIT_END
}

+ (id)rectWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height
{
	CCRect *rect = [[CCRect alloc] initWithX:x y:y width:width height:height];
	return [rect autorelease];
}

+ (id)rectWithOrigin:(CGPoint)aOrigin size:(CGSize)aSize
{
	CCRect *rect = [[CCRect alloc] initWithOrigin:aOrigin size:aSize];
	return [rect autorelease];
}

+ (id)rectWithCGRect:(CGRect)rect
{
	CCRect *aRect = [[CCRect alloc] initWithCGRect:rect];
	return [aRect autorelease];
}

- (void)dealloc
{
	[super dealloc];
}

- (CGFloat)x
{
	return origin.x;
}

- (CGFloat)y
{
	return origin.y;
}

- (CGFloat)width
{
	return size.width;
}

- (CGFloat)height
{
	return size.height;
}

- (void)setX:(CGFloat)x
{
	origin.x = x;
}

- (void)setY:(CGFloat)y
{
	origin.y = y;
}

- (void)setWidth:(CGFloat)width
{
	size.width = width;
}

- (void)setHeight:(CGFloat)height
{
	size.height = height;
}

- (void)setX:(CGFloat)x y:(CGFloat)y
{
	origin.x = x;
	origin.y = y;
}

- (void)setWidth:(CGFloat)width height:(CGFloat)height
{
	size.width = width;
	size.height = height;
}

- (BOOL)isEqualTo:(CCRect *)rect
{
	return (FLOAT_EQUAL_TO_FLOAT(origin.x, rect->origin.x)
		 && FLOAT_EQUAL_TO_FLOAT(origin.y, rect->origin.y)
		 && FLOAT_EQUAL_TO_FLOAT(size.width, rect->size.width)
		 && FLOAT_EQUAL_TO_FLOAT(size.height, rect->size.height));
}

- (BOOL)isEqualToCGRect:(CGRect)rect
{
	return (FLOAT_EQUAL_TO_FLOAT(origin.x, rect.origin.x)
		 && FLOAT_EQUAL_TO_FLOAT(origin.y, rect.origin.y)
		 && FLOAT_EQUAL_TO_FLOAT(size.width, rect.size.width)
		 && FLOAT_EQUAL_TO_FLOAT(size.height, rect.size.height));
}

- (BOOL)isZero
{
	return (FLOAT_EQUAL_TO_ZERO(origin.x)
		 && FLOAT_EQUAL_TO_ZERO(origin.y)
		 && FLOAT_EQUAL_TO_ZERO(size.width)
		 && FLOAT_EQUAL_TO_ZERO(size.height));
}

- (CGRect)toCGRect
{
	return CGRectMake(origin.x, origin.y, size.width, size.height);
}

@end
