//
//  CCUICalloutView.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

// a demo
/*
 .h:
 UICalloutView *_callout;
 
 - (void)hideDisclosure
 {
	[_callout fadeOutWithDuration:0.1f];
 }
 
 - (void)xxxx
 {
	 _callout = [[UICalloutView alloc] initWithFrame:CGRectZero];  
	 _callout.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;  
	 _callout.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;    
	 [_callout setTitle:@"More Info..."];  
	 [_callout addTarget:self action:@selector(hideDisclosure)]; 
	 [self.view addSubview:_callout];  
	 
	 // the line below must be put after addSubview, or the view won't appear.
	 [_callout setAnchorPoint:CGPointMake(160, 200) boundaryRect:CGRectMake(0.0f, 0.0f, 320.0f, 100.0f) animate:YES]; 
	 
	 [_callout release];
 }
*/

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS

@interface UICalloutView : UIView 
{

}

@end

@interface UICalloutView(cc)

// set the anchor point info
- (void)setAnchorPoint:(CGPoint)point 
		  boundaryRect:(CGRect)rect 
			   animate:(BOOL)animated;

- (void)fadeOutWithDuration:(float)time;	// fade out within seconds of the argument time

- (void)setTitle:(NSString *)title;		// set the title
- (NSString *)title;					// get the title
- (void)setSubtitle:(NSString *)subTitle;	// set the subtitle
- (NSString *)subtitle;						// get the subtitle

@end

#endif

