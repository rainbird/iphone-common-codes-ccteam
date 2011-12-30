//
//  CCPlistFileReader.m
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCPlistFileReader.h"
#import "CCFileUtil.h"

@implementation CCPlistFileReader

+ (NSArray *)readBundleFileToNSArray:(NSString *)fileName
{
	NSString *fileFullPath = [CCFileUtil getFileFullPathInBundlePath:fileName];
	return [[[NSArray alloc] initWithContentsOfFile:fileFullPath] autorelease];
}

+ (NSArray *)readDocumentFileToNSArray:(NSString *)fileName
{
	NSString *fileFullPath = [CCFileUtil getFileFullPathInDocument:fileName];
	return [[[NSArray alloc] initWithContentsOfFile:fileFullPath] autorelease];
}

- (id)initWithBundleFilePlistArr:(NSString *)fileName
{
	self = [super init];
	if(self)
	{
		NSString *fileFullPath = [CCFileUtil getFileFullPathInBundlePath:fileName];
		_internal = [[NSArray alloc] initWithContentsOfFile:fileFullPath];
	}
	return self;
}

- (id)initWithBundleFilePlistDict:(NSString *)fileName
{
	self = [super init];
	if(self)
	{
		NSString *fileFullPath = [CCFileUtil getFileFullPathInBundlePath:fileName];
		_internal = [[NSArray alloc] initWithContentsOfFile:fileFullPath];
	}
	return self;
}

- (id)initWithDocumentFilePlistArr:(NSString *)fileName
{
	self = [super init];
	if(self)
	{
		NSString *fileFullPath = [CCFileUtil getFileFullPathInDocument:fileName];
		_internal = [[NSDictionary alloc] initWithContentsOfFile:fileFullPath];
	}
	return self;
}

- (id)initWithDocumentFilePlistDict:(NSString *)fileName
{
	self = [super init];
	if(self)
	{
		NSString *fileFullPath = [CCFileUtil getFileFullPathInDocument:fileName];
		_internal = [[NSDictionary alloc] initWithContentsOfFile:fileFullPath];
	}
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

- (NSUInteger)count
{
	return [_internal count];
}

- (id)objectForKey:(id)key
{
	if(![_internal isKindOfClass:[NSDictionary class]])
		return nil;
	
	return [_internal objectForKey:key];
}


- (id)objectAtIndex:(unsigned int)index
{
	if(![_internal isKindOfClass:[NSArray class]])
		return nil;
	
	return [_internal objectAtIndex:index];
}

@end
