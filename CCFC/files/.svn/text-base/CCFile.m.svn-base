//
//  CCFile.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCFile.h"
#import "CCCommon.h"

@implementation CCFile

- (id)initWithFilePath:(NSString *)filePath withOpenOptions:(NSString *)options
{
	COMMON_INIT_BEGIN
	
	FILE *file = fopen([filePath UTF8String], [options UTF8String]);
	if(file == NULL)
		return nil;
	_filePath = [filePath retain];
	_openOptions = [options retain];
	_file = file;
	
	COMMON_INIT_END
}

- (void)dealloc
{
	[_filePath release];
	[_openOptions release];
	if(_file != NULL)
		fclose(_file);
	[super dealloc];
}

- (NSString *)filePath
{
	return _filePath;
}

- (NSString *)openOptions
{
	return _openOptions;
}

- (long)getFileSize
{
	long curPos = ftell(_file);		// get the curr pos
	fseek(_file, 0, SEEK_END);
	
	long ret = ftell(_file);
	fseek(_file, curPos, SEEK_SET);	// restore to the previous pos
	return ret;
}

- (long)currPos
{
	return ftell(_file);
}

- (void)moveToBegin
{
	rewind(_file);
}

- (void)moveToPos:(long)pos
{
	fseek(_file, pos, SEEK_SET);
}

- (void)moveToEnd
{
	fseek(_file, 0, SEEK_END);
}

- (int)flush
{
	return fflush(_file);
}

- (size_t)read:(void *)buf withSize:(size_t)size
{
	return fread(buf, 1, size, _file);
}

- (size_t)write:(void *)buf withSize:(size_t)size
{
	return fwrite(buf, 1, size, _file);
}

- (void)close
{
	if(_file != NULL)
	{
		fclose(_file);
		_file = NULL;
	}
}

+ (NSArray *)readFileToLines:(NSString *)filePath
{
	return [[NSString stringWithContentsOfFile:filePath
									  encoding:NSUTF8StringEncoding
										 error:nil]
			 componentsSeparatedByString:@"\n"];
}


@end
