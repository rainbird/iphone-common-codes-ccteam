//
//  CCPoint.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CCPoint : NSObject
{
@public
	CGFloat x;
	CGFloat y;
}

- (id)initWithX:(CGFloat)x withY:(CGFloat)y;
+ (id)pointWithX:(CGFloat)aX withY:(CGFloat)aY;
- (id)initWithCGPoint:(CGPoint)point;
+ (id)pointWithCGPoint:(CGPoint)point;

- (void)dealloc;


- (BOOL)isEqualTo:(CCPoint *)anotherPoint;
- (BOOL)isEqualToCGPoint:(CGPoint)point;
- (BOOL)isZero;

- (void)setX:(CGFloat)newX withY:(CGFloat)newY;

- (BOOL)isInRect:(CGRect)rect;

//判断某个点是否在某个区域里
+ (BOOL)isInRect:(CGPoint)p rect:(CGRect)rect;

- (CGPoint)toCGPoint;

// get the distance of two CCPoint
- (CGFloat)distanceToCCPoint:(CCPoint *)anotherPoint;


@end
