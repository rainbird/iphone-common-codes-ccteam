//
//  CCUIHilightedLabel.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUIHilightedLabel.h"


@implementation CCUIHilightedLabel

@synthesize isHilighted     = _isHilighted;
@synthesize disableHilight  = _disableHilight;
@synthesize delegate        = _delegate;
@synthesize hilightedColor  = _hilightedColor;

- (id)initWithFrame:(CGRect)frame 
{
    
    self = [super initWithFrame:frame];
    if (self)
    {
        
    }
    return self;
}

- (void)dealloc 
{
    [super dealloc];
}


- (void)setIsHilighted:(BOOL)isHighlighted
{
	if(isHighlighted)
	{
		_isHilighted = TRUE;
		super.textColor = _hilightedColor;
	}
	else
	{
		_isHilighted = FALSE;
		super.textColor = [UIColor blackColor];
	}
}


- (void)drawRect:(CGRect)rect 
{
	[super drawRect:rect];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	if(!_disableHilight)
	{
		_isHilighted = TRUE;
		super.textColor = _hilightedColor;
		[_delegate onHilightedLabelTouchedBegan:self];
	}
}

@end
