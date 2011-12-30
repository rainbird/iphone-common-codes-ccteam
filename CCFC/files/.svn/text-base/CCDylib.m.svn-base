//
//  CCDylib.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCDylib.h"
#import "CCNSString.h"
#import "CCCommon.h"
#import <dlfcn.h>

@implementation CCDylib

+ (void *)open:(NSString *)dylibFileFullPath
{
	return dlopen([dylibFileFullPath UTF8String], RTLD_LAZY);
}

+ (void *)openSystemDylib:(NSString *)dylibFileName
{
	NSString *path = [dylibFileName systemLibraryPath];
	return [self open:path];
}

+ (void *)openMobileSubstrateDylib:(NSString *)dylibFileName
{
	NSString *path = [NSString stringWithFormat:
			@"%@%@", MOBILE_SUBSTRATE_PATH, dylibFileName];
	return [self open:path];
}


+ (int)close:(void *)dylibPtr
{
	return dlclose(dylibPtr);
}


- (id)initWithFileFullPath:(NSString *)fileFullPath
{
	COMMON_INIT_BEGIN
	
	_handle = [CCDylib open:fileFullPath];
	EQUAL_NULL_RETURN_NIL(_handle)
	
	COMMON_INIT_END
}

- (id)initWithSystemDylib:(NSString *)dylibFileName
{
	COMMON_INIT_BEGIN
	
	_handle = [CCDylib openSystemDylib:dylibFileName];
	EQUAL_NULL_RETURN_NIL(_handle)
	
	COMMON_INIT_END
}

- (id)initWithMobileSubstrateDylib:(NSString *)dylibFileName
{
	COMMON_INIT_BEGIN
	
	_handle = [CCDylib openMobileSubstrateDylib:dylibFileName];
	EQUAL_NULL_RETURN_NIL(_handle)
	
	COMMON_INIT_END
}

- (void)dealloc
{
	[super dealloc];
}


- (intVoidFunc)getIntVoidFunc:(NSString *)funcName
{
	return (intVoidFunc)dlsym(_handle, [funcName UTF8String]);
}

- (voidVoidFunc)getVoidVoidFunc:(NSString *)funcName
{
	return (voidVoidFunc)dlsym(_handle, [funcName UTF8String]);
}

- (charStarVoidFunc)getCharStarVoidFunc:(NSString *)funcName
{
	return (charStarVoidFunc)dlsym(_handle, [funcName UTF8String]);
}

- (nSStringVoidFunc)getNSStringVoidFunc:(NSString *)funcName
{
	return (nSStringVoidFunc)dlsym(_handle, [funcName UTF8String]);
}


- (NSString *)getError
{
	return [NSString stringWithUTF8String:dlerror()];
}


- (int)close
{
	return dlclose(_handle);
}


@end
