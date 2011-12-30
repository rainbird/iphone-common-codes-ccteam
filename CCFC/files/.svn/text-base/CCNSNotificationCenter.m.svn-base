//
//  CCNSNotificationCenter.m
//  CCFC
//
//  Created by xichen on 11-12-27.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNSNotificationCenter.h"


@implementation NSNotificationCenter(cc) 

+ (void)defaultCenterAddObserver:(id)observer 
						selector:(SEL)selector 
							name:(NSString *)name 
						  object:(id)obj
{
	[[NSNotificationCenter defaultCenter] addObserver:observer
											 selector:selector
												 name:name
											   object:obj];
}


+ (void)defaultCenterAddObserverCommon:(id)observer 
						selector:(SEL)selector 
							name:(NSString *)name 
{
	[[NSNotificationCenter defaultCenter] addObserver:observer
											 selector:selector
												 name:name
											   object:nil];
}


+ (void)defaultCenterAddObserverCommonToSelf:(SEL)selector 
										name:(NSString *)name 
{
	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:selector
												 name:name
											   object:nil];
}

@end
