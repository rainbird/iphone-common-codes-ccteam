//
//  CCUIHardware.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCConfig.h"

#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS

@interface UIHardware : NSObject
{
	
}
@end

@interface UIHardware(cc)

+ (float)statusBarHeight;	// the height of the statusBar
+ (CGSize)mainScreenSize;	// the size of the main screen
+ (NSString *)deviceName;	// the name of the device
+ (NSString *)localizedDeviceName;	// the localized device name
+ (void)_playSystemSound:(unsigned long)soundId;	// play the system sound, eg, 0x450 is the click sound of the keyboard
+ (int)ringerState;			// the state of the ringer, returns 1 means the ringer is on

@end

#endif
