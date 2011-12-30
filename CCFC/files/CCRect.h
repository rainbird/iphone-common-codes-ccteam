//
//  CCRect.h
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CCRect : NSObject 
{
@public
	CGPoint		origin;
	CGSize		size;
}

- (id)initWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (id)initWithOrigin:(CGPoint)aOrigin size:(CGSize)aSize;
- (id)initWithCGRect:(CGRect)rect;

+ (id)rectWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
+ (id)rectWithOrigin:(CGPoint)aOrigin size:(CGSize)aSize;
+ (id)rectWithCGRect:(CGRect)rect;

- (void)dealloc;

- (CGFloat)x;
- (CGFloat)y;
- (CGFloat)width;
- (CGFloat)height;
- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;

- (void)setX:(CGFloat)x y:(CGFloat)y;
- (void)setWidth:(CGFloat)width height:(CGFloat)height;

- (BOOL)isEqualTo:(CCRect *)rect;
- (BOOL)isEqualToCGRect:(CGRect)rect;
- (BOOL)isZero;

- (CGRect)toCGRect;

@end
