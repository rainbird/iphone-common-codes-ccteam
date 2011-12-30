//
//  CCUIWindow.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIWindow.h"
#import "CCLog.h"

@implementation UIWindow(cc)

// 
+ (UIWindow *)addImgToStatusBar:(UIImage *)img withRect:(CGRect)imgRect
{
	CGRect frame = {{0,0}, {320,20}};
	UIWindow *wnd = [[UIWindow alloc] initWithFrame:frame];
//    [UIApplication sharedApplication].statusBarHidden = YES;
//	[wnd setBackgroundColor:[UIColor clearColor]];
	[wnd setWindowLevel:UIWindowLevelAlert];

	UIImageView *imgView = [[UIImageView alloc] initWithFrame:imgRect];
	[imgView setContentMode:UIViewContentModeScaleAspectFit];
//    UIImage *scaledImg = [img scale:0.5];
	[imgView setImage:img];

	[wnd addSubview:imgView];
	[imgView release];
    
    [wnd makeKeyAndVisible];
    
    return wnd;
}

// not ok
+ (void)addImgToWindow:(UIImage *)img withRect:(CGRect)imgRect
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [window setWindowLevel:UIWindowLevelStatusBar];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:imgRect];
	[imgView setContentMode:UIViewContentModeCenter];
	[imgView setImage:img];
    [window addSubview:imgView];
    [imgView release];
    
}

+ (NSArray *)logAllWindows
{
	NSArray *arr = [[UIApplication sharedApplication] windows];
	LOG_ID(arr);
	return arr;
}

- (void)getSubViewIsMemberOf:(NSString *)viewStr 
					   array:(NSMutableArray *)outArray 
					 maxSize:(int)maxSize
{
	[super getSubViewIsMemberOf:viewStr array:outArray maxSize:maxSize];
}

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS

// uses private api
// 获取UITextEffectsWindow的指针
+ (UIWindow *)getTextEffectsWindow
{
	Class cls = NSClassFromString(@"UITextEffectsWindow");
	return [cls sharedTextEffectsWindow];
}

#endif

@end
