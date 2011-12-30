//
//  CCUISlider.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUISlider.h"


@implementation UISlider(cc)

// create a common UISlider
+ (UISlider *)createCommonSlider:(CGRect)rect target:(id)target sel:(SEL)sel
{
	UISlider *slider = [[UISlider alloc] initWithFrame:rect];
	if(slider == nil)
		return nil;
	slider.minimumValue = 0;
	slider.maximumValue = 100;
	[slider addTarget:target
			   action:sel
	 forControlEvents:UIControlEventValueChanged];
	return [slider autorelease];
}

@end
