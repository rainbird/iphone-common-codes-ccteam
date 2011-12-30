//
//  CCNSEnumerator.m
//  CCFC
//
//  Created by xichen on 11-12-27.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNSEnumerator.h"


@implementation NSEnumerator(cc)

- (void)enumForSelector:(id)delegate selector:(SEL)selector
{
	id obj;
	while (obj = [self nextObject]) 
	{ 
		[delegate performSelector:selector withObject:obj];
    } 
}

- (void)enumForSelector:(id)delegate selector:(SEL)selector userInfo:(id)userInfo
{
	id obj;
	while (obj = [self nextObject]) 
	{ 
		[delegate performSelector:selector
					   withObject:obj
					   withObject:userInfo];
    } 
}

@end
