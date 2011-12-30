//
//  CCUIFont.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIFont.h"
#import "CCLog.h"

@implementation UIFont(cc)

+ (void)logAllFonts
{
	NSArray *familyNames = [UIFont familyNames];
	LOG_ARR(familyNames);
	
	for(NSString *familyName in familyNames)
	{
		NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
		LOG_ARR(fontNames);
	}
}

@end
