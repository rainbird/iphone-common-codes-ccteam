//
//  CCPlistFileWritter.m
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCPlistFileWritter.h"


@implementation CCPlistFileWritter

- (void)initWritterObjOnce
{
	if(_writterObj == nil)
	{
		_writterObj = [[NSMutableDictionary alloc] initWithDictionary:_internal 
															copyItems:YES];
		[_internal release];
		_internal = nil;
	}
}

- (void)removeObjectForKey:(id)key
{
	[self initWritterObjOnce];
	[_writterObj removeObjectForKey:key];
}

- (void)setObject:(id)object forKey:(id)key
{
	[self initWritterObjOnce];
	[_writterObj setObject:object forKey:key];
}


- (void)addObject:(id)object
{
	[self initWritterObjOnce];
	[_writterObj addObject:object];
}

- (void)insertObject:(id)object atIndex:(NSUInteger)index
{
	[self initWritterObjOnce];
	[_writterObj insertObject:object atIndex:index];
}

- (void)removeLastObject
{
	[self initWritterObjOnce];
	[_writterObj removeLastObject];
}

- (void)removeObjectAtIndex:(NSUInteger)index
{
	[self initWritterObjOnce];
	[_writterObj removeObjectAtIndex:index];
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)object
{
	[self initWritterObjOnce];
	[_writterObj replaceObjectAtIndex:index withObject:object];
}

- (void)dealloc
{
	[_writterObj release];
	[super dealloc];
}

@end
