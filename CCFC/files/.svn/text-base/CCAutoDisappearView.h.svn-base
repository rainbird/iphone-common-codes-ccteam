//
//  CCAutoDisappearView.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <UIKit/UIKit.h>

// a kind of view that can disappear automatically
@interface CCAutoDisappearView : UIView 
{
	UILabel			*_msgLbl;
	double			_tm;
	UIView			*_superView;
    UIColor         *_bgColor;
}

@property(nonatomic, assign)	double		tm;         // the time that disappear time
@property(nonatomic, assign)	UIView		*superView;
@property(nonatomic, retain)	UILabel		*msgLbl;
@property(nonatomic, retain)	UIColor     *bgColor;

- (void)setText:(NSString *)str;
- (void)show;

@end
