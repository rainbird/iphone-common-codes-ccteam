//
//  CCSize.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCSize.h"
#import "CCCommon.h"
#import "CCNSNumber.h"

@implementation CCSize


- (id)initWithWidth:(CGFloat)aWidth withHeight:(CGFloat)aHeight
{
	COMMON_INIT_BEGIN
	
	self->width = aWidth;
	self->height = aHeight;
	
	COMMON_INIT_END
}

+ (id)sizeWithCCSize:(CCSize *)size
{
	CCSize *newSize = [[CCSize alloc] 
					   initWithWidth:size->width withHeight:size->height];
	return [newSize autorelease];
}

- (id)initWithCGSize:(CGSize)size
{
	COMMON_INIT_BEGIN
	
	width = size.width;
	height = size.height;
	
	COMMON_INIT_END
}

+ (id)sizeWithCGSize:(CGSize)size
{
	CCSize *newSize = [[CCSize alloc] initWithCGSize:size];
	return [newSize autorelease];
}

- (void)dealloc
{
	[super dealloc];
}

- (BOOL)isEqualTo:(CCSize *)anotherSize
{
	return (FLOAT_EQUAL_TO_FLOAT(width, anotherSize->width)
		 && FLOAT_EQUAL_TO_FLOAT(height, anotherSize->height));
}

- (BOOL)isEqualToCGSize:(CGSize)size
{
	return (FLOAT_EQUAL_TO_FLOAT(width, size.width)
		 && FLOAT_EQUAL_TO_FLOAT(height, size.height));
}

- (BOOL)isZero
{
	return (FLOAT_EQUAL_TO_ZERO(width)
		 && FLOAT_EQUAL_TO_ZERO(height));
}

- (void)setWidth:(CGFloat)newWidth withHeight:(CGFloat)newHeight
{
	self->width = newWidth;
	self->height = newHeight;
}

- (CGSize)toCGSize
{
	return CGSizeMake(width, height);
}

@end
