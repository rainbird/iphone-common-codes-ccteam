//
//  CCBaseTipView.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#include "CCBaseTipView.h"


@implementation CCBaseTipView

@synthesize appearStyle     = _appearStyle;
@synthesize disappearStyle  = _disappearStyle;
@synthesize father          = _father;
@synthesize finalRect       = _finalRect;
@synthesize firstRect       = _firstRect;

- (id)initWithFrame:(CGRect)frame 
{
    
    self = [super initWithFrame:frame];
    if (self) 
    {
		self.backgroundColor = [UIColor clearColor];
		_finalRect = CGRectMake(0, 0, 320, 460);
		
    }
    return self;
}

- (void)dealloc 
{
	[_father release];
    [super dealloc];
}


- (void)setAppearStyle:(UI_APPEAR_STYLE)aAppearStyle
{
	CGRect rect = self.frame;
	
	switch (aAppearStyle)
	{
		case UI_APPEAR_STYLE_UP_TO_DOWN:
		{
			rect.origin.y = 0;
		}
		break;
			
		case UI_APPEAR_STYLE_DOWN_TO_UP:
		{
			rect.origin.y = _father.frame.size.height;
		}
		break;
			
		case UI_APPEAR_STYLE_LEFT_TO_RIGHT:
		{
			rect.origin.x = -rect.size.width;
		}
		break;
			
		case UI_APPEAR_STYLE_RIGHT_TO_LEFT:
		{
			rect.origin.y = _father.frame.size.width;
		}
		break;
			
		default:
			break;
	}
	
	self.frame = rect;
	_firstRect = rect;
}

- (void)show
{	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.1f];
	[UIView setAnimationTransition:UIViewAnimationTransitionNone forView:self cache:YES]; 
	
	CGRect rect = _finalRect;
	self.frame = rect;
	
	[UIView commitAnimations];
}

- (void)hide
{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.1f];
	[UIView setAnimationTransition:UIViewAnimationTransitionNone forView:self cache:YES]; 
	
	CGRect rect = _firstRect;
	self.frame = rect;
	
	[UIView commitAnimations];
}



@end
