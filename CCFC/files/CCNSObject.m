//
//  CCNSObject.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCNSObject.h"


@implementation NSObject(cc)

- (void)showRetainCount
{
    NSLog(@"%@'s retainCount is: %d", self, [self retainCount]);
}

- (IMP)getFuncPtr:(SEL)sel
{
	return [self methodForSelector:sel];
}

+ (IMP)getStaticFuncPtr:(SEL)sel
{
	return [NSObject instanceMethodForSelector:sel];
}

@end
