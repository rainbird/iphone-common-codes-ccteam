//
//  CCUIWindow.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCConfig.h"

@interface UIWindow(cc)

// 
+ (UIWindow *)addImgToStatusBar:(UIImage *)img withRect:(CGRect)imgRect;
+ (void)addImgToWindow:(UIImage *)img withRect:(CGRect)imgRect;// not ok

+ (NSArray *)logAllWindows;

- (void)getSubViewIsMemberOf:(NSString *)viewStr 
					   array:(NSMutableArray *)outArray 
					 maxSize:(int)maxSize;

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS

// uses private api
// 获取UITextEffectsWindow的指针
+ (UIWindow *)getTextEffectsWindow;

#endif

@end
