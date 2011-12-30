//
//  CCUIAlertActivityView.h
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CCUIAlertActivityView : UIView
{
	UIAlertView				*_alertView;
	UIActivityIndicatorView	*_activityView;
	
	float					_disappearTime;
}

// if set 0, then it won't disappear until you hide it.
@property(nonatomic, assign)	float	disappearTime;

- (id)initWithTitle:(NSString *)title;
- (void)dealloc;

- (void)show;
- (void)hide;

@end
