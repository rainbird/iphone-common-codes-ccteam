//
//  CCUIFont.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

// 创建字体对象
#define	CREATE_FONT(fontSize)	[UIFont systemFontOfSize:(fontSize)]

@interface UIFont(cc) 

+ (void)logAllFonts;

@end
