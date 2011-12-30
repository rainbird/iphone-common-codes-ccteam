//
//  CCNSPredicate.m
//  CCFC
//
//  Created by xichen on 11-12-27.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNSPredicate.h"


@implementation NSPredicate(cc)

// returns whether the str is in accordance with the format
+ (BOOL)isValidFormat:(NSString *)str withFormat:(NSString *)format 
{
	NSPredicate *predicate = [NSPredicate predicateWithFormat:
								   @"SELF MATCHES %@", format];
	
	return [predicate evaluateWithObject:str];
}

// not ok
+ (BOOL)isChineseChar:(NSString *)str
{
	return [self isValidFormat:str withFormat:@"[\u4e00-\u9fa5]"];
}

@end
