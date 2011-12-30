//
//  CCDylib.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define	MOBILE_SUBSTRATE_PATH				@"/Library/MobileSubstrate/DynamicLibraries/"

typedef	void		(*voidVoidFunc)();
typedef	int			(*intVoidFunc)();
typedef	char *		(*charStarVoidFunc)();
typedef	NSString *	(*nSStringVoidFunc)();

@interface CCDylib : NSObject 
{
@private
	void *		_handle;
}

+ (void *)open:(NSString *)dylibFileFullPath;
+ (void *)openSystemDylib:(NSString *)dylibFileName;
+ (void *)openMobileSubstrateDylib:(NSString *)dylibFileName;

+ (int)close:(void *)dylibPtr;


- (id)initWithFileFullPath:(NSString *)fileFullPath;
- (id)initWithSystemDylib:(NSString *)dylibFileName;
- (id)initWithMobileSubstrateDylib:(NSString *)dylibFileName;
- (void)dealloc;

- (intVoidFunc)getIntVoidFunc:(NSString *)funcName;
- (voidVoidFunc)getVoidVoidFunc:(NSString *)funcName;
- (charStarVoidFunc)getCharStarVoidFunc:(NSString *)funcName;
- (nSStringVoidFunc)getNSStringVoidFunc:(NSString *)funcName;

- (NSString *)getError;

- (int)close;

@end
