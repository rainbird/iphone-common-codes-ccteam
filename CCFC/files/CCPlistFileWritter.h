//
//  CCPlistFileWritter.h
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCPlistFileReader.h"

@interface CCPlistFileWritter : CCPlistFileReader
{
	id		_writterObj;
}

// for NSDictionary
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;

// for NSArray
- (void)addObject:(id)anObject;
- (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(NSUInteger)index;
- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

@end
