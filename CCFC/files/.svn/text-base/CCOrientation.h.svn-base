//
//  CCOrientation.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

// 增加设备翻转的回调
#define	ADD_ORITENTATION_NOTIFICATION(idName, selectorName, objectInfo)	\
        [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];	\
        [[NSNotificationCenter defaultCenter] addObserver:(idName) selector:(selectorName)	\
                name:@"UIDeviceOrientationDidChangeNotification" object:(objectInfo)];

@interface CCOrientation : NSObject 
{
    
}

@end
