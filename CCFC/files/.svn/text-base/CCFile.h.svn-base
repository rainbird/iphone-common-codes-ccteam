//
//  CCFile.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>

// a file class that processes c file funcs like fopen, fread, fwrite, ftell, fclose and so on
@interface CCFile : NSObject 
{
@private
	FILE		*_file;
	NSString	*_filePath;
	NSString	*_openOptions;
}

- (id)initWithFilePath:(NSString *)filePath withOpenOptions:(NSString *)options;
- (void)dealloc;

- (NSString *)filePath;
- (NSString *)openOptions;

- (long)getFileSize;

- (long)currPos;
- (void)moveToBegin;
- (void)moveToPos:(long)pos;
- (void)moveToEnd;

- (size_t)read:(void *)buf withSize:(size_t)size;
- (size_t)write:(void *)buf withSize:(size_t)size;

- (int)flush;

- (void)close;

+ (NSArray *)readFileToLines:(NSString *)filePath;

@end
