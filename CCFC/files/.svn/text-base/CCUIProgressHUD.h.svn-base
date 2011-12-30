//
//  CCUIProgressHUD.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS

// a demo
/*
 .h:
 id			progHUD;
 
 .m:
 
 - (void)onProgressHUDLoadOk
 {
	 [progHUD done];
	 [progHUD hide];
	 [progHUD release];
 }
 
 - (void)xxx
 {
	 Class cls = NSClassFromString(@"UIProgressHUD");
	 progHUD = [[cls alloc] initWithFrame:CGRectZero];
 
	 [progHUD setText:@"Loading..."];
	 [progHUD showInView:self.view];
 
	 [NSTimer scheduledTimerWithTimeInterval:3.0f
				target:self
				selector:@selector(onProgressHUDLoadOk)
				userInfo:nil
				repeats:NO];
 }
*/

@interface UIProgressHUD : UIView 
{

}

@end

@interface UIProgressHUD(cc)

- (void)showInView:(UIView *)view;	// show self in the view
- (void)hide;		// hide self
- (void)done;		// indicate that the progress is done

@end

#endif
