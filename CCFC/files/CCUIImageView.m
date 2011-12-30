//
//  CCUIImageView.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUIImageView.h"
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

@implementation UIImageView(cc)

- (void)rotate:(float)angle
{
	CGAffineTransform transform = CGAffineTransformMakeRotation(angle);
	self.transform = transform;
}

// 
- (void)setRotatePoint:(CGPoint)point
{
	self.layer.anchorPoint = point;
}

@end
