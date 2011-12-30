//
//  CCUIAlertActivityView.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUIAlertActivityView.h"
#import "CCNSNumber.h"
#import "CCUIView.h"
#import "CCCommon.h"
#import "CCLog.h"

@implementation CCUIAlertActivityView

@synthesize disappearTime = _disappearTime;

- (id)initWithTitle:(NSString *)title
{
	self = [super init];
	if(self)
	{
		_alertView = [[UIAlertView alloc] initWithTitle:title
												message:nil
											   delegate:self
									  cancelButtonTitle:nil
									  otherButtonTitles:nil];

		_activityView = [[UIActivityIndicatorView alloc] 
						 initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
		_activityView.frame = CGRectMake(0, 0, 20, 20);
		[_alertView addSubview:_activityView];
		[_activityView release];
	}
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

- (void)onDisappear:(id)timer PRIVATE_FLAG
{
	[_activityView stopAnimating];
	[_alertView dismissWithClickedButtonIndex:0 animated:YES];
}

- (void)show
{
	[_alertView show];

	[_activityView setCenterOf:_alertView];
	[_activityView startAnimating];
	[_alertView release];
	if(!FLOAT_EQUAL_TO_ZERO(_disappearTime))
	{
		[NSTimer scheduledTimerWithTimeInterval:_disappearTime
										 target:self
									   selector:@selector(onDisappear:)
									   userInfo:nil
										repeats:NO];
	}
}

- (void)hide
{
	[_alertView dismissWithClickedButtonIndex:0 animated:YES];
}

@end
