//
//  CCUIScreen.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

// the width and height of the screen
#define	MACRO_SCREEN_WIDTH				([[UIScreen mainScreen] bounds].size.width)
#define	MACRO_SCREEN_HEIGHT				([[UIScreen mainScreen] bounds].size.height)

#define	MACRO_APP_FRAME					[[UIScreen mainScreen] applicationFrame]
#define MACRO_MAIN_SCREEN_RECT			CGRectMake(0, 0, MACRO_SCREEN_WIDTH, MACRO_SCREEN_HEIGHT)

#ifndef	MACRO_FULL_SCREEN
#define	MACRO_FULL_SCREEN				[[UIScreen mainScreen] bounds]
#endif

#define	MACRO_DEFAULT_STATUSBAR_HEIGHT		20
#define	MACRO_DEFAULT_NAVIGATIONBAR_HEIGHT	44
#define	MACRO_DEFAULT_SCREEN_WIDTH			320
#define	MACRO_DEFAULT_SCREEN_HEIGHT			480

#define	MACRO_DEFAULT_TAB_BAR_HEIGHT		49
#define	MACRO_DEFAULT_TAB_BAR_ICON_WIDTH	30
#define	MACRO_DEFAULT_TAB_BAR_ICON_HEIGHT	30

#define	MACRO_PPI_ON_IPHONE4				326
#define	MACRO_PPI_UNDER_IPHONE4				163

@interface UIScreen(cc) 

- (CGFloat)width;
- (CGFloat)height;
- (CGFloat)appWidth;
- (CGFloat)appHeight;

@end
