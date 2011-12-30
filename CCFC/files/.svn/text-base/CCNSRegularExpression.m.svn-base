//
//  CCNSRegularExpression.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNSRegularExpression.h"


@implementation NSRegularExpression(cc)

// get the common result array with pattern in the string: str;
// returns the array of "NSTextCheckingResult *" elements.
+ (NSArray *)getCommonResult:(NSString *)str withPattern:(NSString *)pattern
{
	NSRegularExpression *regExp = 
		[NSRegularExpression regularExpressionWithPattern:pattern
		options:NSRegularExpressionCaseInsensitive error:nil];

	NSArray * arr = [regExp matchesInString:str
									options:NSMatchingCompleted
									  range:NSMakeRange(0, [str length])];
	return arr;
}

@end
