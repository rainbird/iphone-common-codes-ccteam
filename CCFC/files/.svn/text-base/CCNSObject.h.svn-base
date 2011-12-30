//
//  CCNSObject.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SHOW_RETAIN_COUNT(obj)				NSLog(@"retainCount is: %d", [(obj) retainCount])

#define SHOW_RETAIN_COUNT_EX(obj, objStr)	\
        NSLog(@"%@'s retainCount is: %d", objStr, [(obj)retainCount]) 

@interface NSObject(cc)
    
- (void)showRetainCount;

- (IMP)getFuncPtr:(SEL)sel;
+ (IMP)getStaticFuncPtr:(SEL)sel;

@end
