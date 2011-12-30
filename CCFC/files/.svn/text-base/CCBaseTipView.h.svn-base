//
//  CCBaseTipView.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#ifndef CC_BASE_TIP_VIEW_H
#define CC_BASE_TIP_VIEW_H

#import <UIKit/UIKit.h>

typedef	enum
{
	UI_APPEAR_STYLE_UP_TO_DOWN,
	UI_APPEAR_STYLE_DOWN_TO_UP,
	UI_APPEAR_STYLE_LEFT_TO_RIGHT,
	UI_APPEAR_STYLE_RIGHT_TO_LEFT
}UI_APPEAR_STYLE;       

#ifdef __OBJC__

// base class for tipview
@interface CCBaseTipView : UIView 
{
	UI_APPEAR_STYLE			_appearStyle;
	UI_APPEAR_STYLE			_disappearStyle;
	UIView					*_father;
	
	CGRect					_firstRect;
	CGRect					_finalRect;
}

@property(nonatomic)            UI_APPEAR_STYLE			appearStyle;
@property(nonatomic)            UI_APPEAR_STYLE			disappearStyle;
@property(nonatomic, retain)	UIView                  *father;
@property(nonatomic)            CGRect					finalRect;
@property(nonatomic)            CGRect					firstRect;

- (id)initWithFrame:(CGRect)frame;
- (void)setAppearStyle:(UI_APPEAR_STYLE)aAppearStyle;
- (void)show;
- (void)hide;

@end

#endif  // __OBJC__
#endif  // CC_BASE_TIP_VIEW_H
