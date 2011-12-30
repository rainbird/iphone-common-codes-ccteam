//
//  CCUILocalNotification.h
//  CCFC
//
//  Created by xichen on 11-12-24.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UILocalNotification(cc)

// create a common local notification
+ (UILocalNotification *)createCommonNotification:(NSString *)alertBody 
										 withTime:(NSTimeInterval)fireSeconds;


@end
