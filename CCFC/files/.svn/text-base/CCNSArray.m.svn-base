//
//  CCNSArray.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCNSArray.h"
#import "CCNSObject.h"

@implementation NSArray(cc)


// 判断一个对象指针(不是对象的值)是否在数组中存在
- (BOOL)isPointerExistsInArray:(id)element
{
	for(id temp in self)
	{
		if(temp == element)
		{
			return TRUE;
		}
	}
	
	return FALSE;
}

// print the retainCount of each element
- (void)printRetainCountOfEach
{
	for(id obj in self)
	{
		[obj showRetainCount];
	}
}

@end

@implementation NSMutableArray(cc)

// add a null element
- (void)addNull
{
	[self addObject:[NSNull null]];
}

@end

