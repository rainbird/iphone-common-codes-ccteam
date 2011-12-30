//
//  CCInfoPlistFileReader.m
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCInfoPlistFileReader.h"

static	id	InfoPlistObj;

@implementation CCInfoPlistFileReader

// not thread safe
+ (id)sharedInstance
{
	if(InfoPlistObj == nil)
	{
		@synchronized(self)
		{
			InfoPlistObj = [[CCInfoPlistFileReader alloc] init];
		}
	}
	return InfoPlistObj;
}

+ (void)releaseInstance
{
	[InfoPlistObj release];
	InfoPlistObj = nil;
}

// print all keys and values in Info.plist file
+ (void)printAllKeysValues
{
	NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];

	for(id key in [infoDict allKeys])
	{
		NSLog(@"key is:%@, value is:%@\n", key, [infoDict objectForKey:key]);
	}
}

- (id)init
{
	self = [super init];
	if(self)
		_internal = [[[NSBundle mainBundle] infoDictionary] retain];
	return self;
}

- (id)getVersion
{
	return [_internal objectForKey:@"CFBundleVersion"]; 
}

@end
