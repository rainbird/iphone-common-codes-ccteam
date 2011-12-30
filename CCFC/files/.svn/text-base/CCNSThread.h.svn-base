//
//  CCNSThread.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define	SLEEP(seconds)	[NSThread sleepForTimeInterval:(seconds)]

// 委托主线程执行
#define	PERFORM_ON_MAIN_THREAD(obj, func, withObj, isWaitUntilDone)	\
		[obj performSelector:func onThread:[NSThread mainThread] withObject:withObj waitUntilDone:isWaitUntilDone]

// 通用委托主线程执行
#define	PERFORM_ON_COMMON_MAIN_THREAD(obj, func)	\
	[obj performSelector:func onThread:[NSThread mainThread] withObject:nil waitUntilDone:NO]


#define		LOCK_SELF_BEGIN		@synchronized {
#define		LOCK_SELF_END		}

@interface CCNSThread : NSObject 
{
    
}

@end
