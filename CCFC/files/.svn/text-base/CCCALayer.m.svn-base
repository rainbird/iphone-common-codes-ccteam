//
//  CCCALayer.m
//  CCFC
//
//  Created by xichen on 11-12-24.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCCALayer.h"


@implementation CALayer(cc)

+ (void)addTestLayer:(UIView *)view withRect:(CGRect)rect
{
	CALayer *layer = [[CALayer alloc] init];
	layer.frame = rect;
	
	UIColor *greenColor = [UIColor greenColor];
	[layer setBackgroundColor:greenColor.CGColor];
	[view.layer insertSublayer:layer atIndex:0];
}

- (void)setBg:(UIImage *)img
{
	self.contents = img.CGImage;
}

@end
