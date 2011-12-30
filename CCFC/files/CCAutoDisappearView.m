//
//  CCAutoDisappearView.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCAutoDisappearView.h"


@implementation CCAutoDisappearView

@synthesize tm = _tm;
@synthesize superView = _superView;
@synthesize msgLbl = _msgLbl;
@synthesize bgColor = _bgColor;

- (id)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) 
	{
		_tm = 3.0f;
    }
    return self;
}

- (void)dealloc 
{
	[_msgLbl release];
    [_bgColor release];
    [super dealloc];
}


- (void)setText:(NSString *)str
{
	self.msgLbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
	_msgLbl.textColor = [UIColor whiteColor];
    if(_bgColor == nil)
        _msgLbl.backgroundColor = [UIColor colorWithRed:(124.0/255) green:(156.0/255) blue:(89.0/255) alpha:0.7];
    else
        _msgLbl.backgroundColor = _bgColor;
        
	_msgLbl.textAlignment = UITextAlignmentCenter;
	_msgLbl.text = str;
	[_msgLbl release];
}

- (void)show
{
	[self addSubview:_msgLbl];
	[_superView addSubview:self];
	self.hidden = FALSE;
	if(_tm > 0)
	{
		[NSTimer scheduledTimerWithTimeInterval:_tm
									 target:self
								   selector:@selector(onDisappear)
								   userInfo:nil 
										repeats:NO];
	}
}


- (void)onDisappear
{
	self.hidden = TRUE;
	[self removeFromSuperview];
}

- (void)drawRect:(CGRect)rect 
{
    [_msgLbl setNeedsDisplay];
	[super drawRect:rect];
}


@end
