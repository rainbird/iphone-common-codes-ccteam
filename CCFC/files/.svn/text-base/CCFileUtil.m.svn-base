//
//  CCFileUtil.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCFileUtil.h"
#import "CCRandom.h"

@implementation CCFileUtil

//获取应用程序的文档目录
+ (NSString *)getDocFolder
{
	NSArray *userPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	return [userPaths objectAtIndex:0];	
}

// 获取应用程序文档目录中某个指定文件全路径
+ (NSString *)getFileFullPathInDocument:(NSString *)fileName
{
	NSString *docPath = [self getDocFolder];
	return [docPath stringByAppendingPathComponent:fileName];
}

// 获取应用程序Library目录路径
+ (NSString *)getLibFolder
{
    NSArray *libPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
	return [libPaths objectAtIndex:0];
}

//获取应用程序Library目录中某个指定文件全路径
+ (NSString *)getFileFullPathInLibFolder:(NSString *)fileName
{
    NSString *libPath = [self getLibFolder];
    return [libPath stringByAppendingPathComponent:fileName];
}

// 获取应用程序bundle路径
+ (NSString *)getBundleFolder
{
    return APP_DIR;
}

// 获取文件在bundle路径的全路径名
+ (NSString *)getFileFullPathInBundlePath:(NSString *)fileName
{
    NSString *bundlePath = [self getBundleFolder];
    return [bundlePath stringByAppendingPathComponent:fileName];
}



// 获取文件路径的父目录名称
+ (NSString *)getParentFolder:(NSString *)filePath
{
	int i;
	for (i = filePath.length - 2; i >= 0; i--)
	{
		if([filePath characterAtIndex:i] == '/')
		{
			break;
		}
	}
	
	if(i == filePath.length - 2 || i == 0)
	{
		return nil;
	}
	
	return [filePath substringToIndex:i];
}


// 如果文件在Document目录中不存在，那么拷贝一份; 如果已存在，不拷贝
+ (BOOL)copyFileToDocumentFolderIfNotExist:(NSString *)fileName
{
    NSString *destFileFullPath = [self getFileFullPathInDocument:fileName];
	NSFileManager *fileManager = [NSFileManager defaultManager];
	
    if(![fileManager fileExistsAtPath:destFileFullPath])
    {
        NSString *bundleFileFullPath = [RES_DIR stringByAppendingPathComponent:fileName];
        
        BOOL ret = [fileManager copyItemAtPath:bundleFileFullPath toPath:destFileFullPath error:nil];
        
        return ret;
    }
    
    return TRUE;
}

// 将文件拷贝到Document目录中，如果已存在，覆盖
+ (BOOL)copyFileToDocumentFolder:(NSString *)fileName
{
    NSString *destFileFullPath = [self getFileFullPathInDocument:fileName];
	NSFileManager *fileManager = [NSFileManager defaultManager];
	
    if([fileManager fileExistsAtPath:destFileFullPath])
    {
		if(![fileManager removeItemAtPath:destFileFullPath error:nil])
		{
			return FALSE;
		}
    }
    NSString *bundleFileFullPath = [RES_DIR stringByAppendingPathComponent:fileName];
    return [fileManager copyItemAtPath:bundleFileFullPath toPath:destFileFullPath error:nil];
}


// 删除指定文件夹下指定文件名的文件
+ (BOOL)deleteFileInFolder:(NSString *)folder withFileName:(NSString *)fileName
{
    NSString *destFileFullPath = [folder stringByAppendingPathComponent:fileName];
	NSFileManager *fileManager = [NSFileManager defaultManager];
	if(![fileManager fileExistsAtPath:destFileFullPath])
	{
		return FALSE;
	}
	
	return [fileManager removeItemAtPath:destFileFullPath error:nil];
}

// 删除应用程序Document目录中的指定文件
+ (BOOL)deleteFileInDocFolder:(NSString *)fileName
{
    return [self deleteFileInFolder:[self getDocFolder] withFileName:fileName];
}

// delete a folder
+ (BOOL)deleteFolder:(NSString *)folderPath
{
	return [self deleteFileInFolder:folderPath withFileName:@""];
}

// 文件是否存在
+ (BOOL)isFileExist:(NSString *)filePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
	return ([fileManager fileExistsAtPath:filePath]);
}

// 重命名指定路径下某个文件为另一个文件名
+ (BOOL)rename:(NSString *)srcFileFolder srcFileName:(NSString *)srcName 
    toFileName:(NSString *)destName
{
    return [self rename:srcFileFolder srcFileName:srcName 
             destFolder:srcFileFolder destFileName:destName];
}

// 重命名指定路径下某个文件为指定目录下的另一个文件名
+ (BOOL)rename:(NSString *)srcFileFolder srcFileName:(NSString *)srcName 
    destFolder:(NSString *)destFolder destFileName:(NSString *)destName
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
	NSString *srcFullPath = [NSString stringWithFormat:@"%@/%@", srcFileFolder, srcName];
    if([fileManager fileExistsAtPath:srcFullPath])
        return FALSE;
    
	NSString *destFullPath = [NSString stringWithFormat:@"%@/%@", destFolder, destName];
	BOOL ret = [fileManager copyItemAtPath:srcFullPath toPath:destFullPath error:nil];
    if(!ret)
        return FALSE;
    
    ret = [fileManager removeItemAtPath:srcFullPath error:nil];
	return ret;
}

// 判断是否是目录
+ (BOOL)isFolder:(NSString *)filePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL ret;
    BOOL isExist = [fileManager fileExistsAtPath:filePath isDirectory:&ret];
    return (isExist && ret);
}

// 获取目录下第一级的所有文件
+ (NSArray *)getAllFilesAtFolder:(NSString *)path
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	return [fileManager contentsOfDirectoryAtPath:path error:nil];
}

+ (NSString *)systemLibraryPath:(NSString *)name
{
	return [name systemLibraryPath];
}

// returns whether the path is an absolute path
+ (BOOL)isAbsolutePath:(NSString *)path
{
	return [path isAbsolutePath];
}

// generate a new file in folder, not create
+ (NSString *)generateNewFile:(NSString *)folder
{
	NSString *tempFileName;
	int len = 4;
	BOOL generateNewFileOK = FALSE;
	
	while (!generateNewFileOK)
	{
		tempFileName = [CCRandom generateRandomStringByLen:len];
		generateNewFileOK = ![CCFileUtil isFileExist:
							 [folder stringByAppendingFormat:@"/%@", tempFileName]];
		if(!generateNewFileOK)
			++len;
		if(len == INT_MAX)
			return nil;
	}
	return tempFileName;
}

// create a new file(not a folder) in the indicated folder
+ (NSString *)createNewFileInFolder:(NSString *)folder
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	
	NSString *tempFileName = [self generateNewFile:folder];
	if(tempFileName == nil)
		return nil;
	
	NSString *fileFullPath = [NSString stringWithFormat:@"%@/%@", folder, tempFileName];
	if([fileManager createFileAtPath:fileFullPath contents:nil attributes:nil])
		return tempFileName;
	return nil;
}

// get the current directory
+ (NSString *)getCurrentDirectory
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	return [fileManager currentDirectoryPath];
}

// change the current directory to the indicated directory
+ (BOOL)changeCurrentDirectoryToDirectory:(NSString *)newDir
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	return [fileManager changeCurrentDirectoryPath:newDir];
}

// enumerator all files in folder
+ (NSArray *)enumAllFilesInFolder:(NSString *)folder
{
	NSMutableArray *arr = [NSMutableArray array];
	NSString *file;
	NSDirectoryEnumerator *enumerator = 
			[[NSFileManager defaultManager] enumeratorAtPath:folder];
	while(file = [enumerator nextObject])
	{
		[arr addObject:file];
	}
	return arr;
}


// get the home directory
+ (NSString *)getHomeDir
{
	return NSHomeDirectory();
}

@end

