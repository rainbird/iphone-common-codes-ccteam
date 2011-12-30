//
//  CCUIHilightedLabel.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CCUIHilightedLabel;

@protocol UIHilightedLabelDelegate

- (void)onHilightedLabelTouchedBegan:(CCUIHilightedLabel *)hilightedLabel;

@end


// a kind of UILabel that can be touched to hilighted
@interface CCUIHilightedLabel : UILabel 
{
	id              _delegate;
	BOOL            _isHilighted;
	BOOL            _disableHilight;
    UIColor         *_hilightedColor;
}

@property(nonatomic, assign)	id		delegate;
@property(nonatomic, assign)	BOOL	isHilighted;
@property(nonatomic, assign)	BOOL	disableHilight;
@property(nonatomic, retain)	UIColor *hilightedColor;

- (id)initWithFrame:(CGRect)frame;
- (void)setIsHilighted:(BOOL)isHighlighted;

@end
