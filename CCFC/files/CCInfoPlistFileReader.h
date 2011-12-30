//
//  CCInfoPlistFileReader.h
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCPlistFileReader.h"


@interface CCInfoPlistFileReader : CCPlistFileReader
{

}

// not thread safe
+ (id)sharedInstance;
+ (void)releaseInstance;

// print all keys and values in Info.plist file
+ (void)printAllKeysValues;

- (id)init;
- (id)getVersion;

@end
