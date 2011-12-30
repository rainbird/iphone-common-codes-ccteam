//
//  CCFileName.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCFileName.h"
#import "CCCommon.h"
#import "CCNSString.h"

@implementation CCFileName

@synthesize fileName = _fileName;

- (id)initWithFileName:(NSString *)fileName
{
	COMMON_INIT_BEGIN
	
	self.fileName = fileName;
	
	COMMON_INIT_END
}

- (void)dealloc
{
	[_fileName release];
	[super dealloc];
}

// get the extend name of the fileName, xichen.txt, then returns txt
- (NSString *)getExtendName
{
	int index = [_fileName lastIndexOfChar:'.'];
	if(index == _fileName.length - 1)
		return @"";
	return [_fileName substringFromIndex:index + 1];
}

// get the main file name of the fileName, xichen.txt, then returns xichen
- (NSString *)getMainName
{
	int index = [_fileName lastIndexOfChar:'.'];
	if(index == -1)
		return _fileName;
	return [_fileName substringToIndex:index];
}

@end
