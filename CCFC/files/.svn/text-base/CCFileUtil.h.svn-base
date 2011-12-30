//
//  CCFileUtil.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#ifndef	CC_FILE_UTIL_H
#define	CC_FILE_UTIL_H

#ifdef __OBJC__
#import <Foundation/Foundation.h>
#import "CCNSString.h"

//应用程序目录
#define	APP_DIR				[[NSBundle mainBundle] bundlePath]
//资源目录
#define	RES_DIR				[[NSBundle mainBundle] resourcePath]

#define	SYS_LIB_PATH(name)	[name systemLibraryPath]

// path for the system library
#define	UI_KIT_PATH				@"/System/Library/Frameworks/UIKit.framework/UIKit"
#define	FOUNDATION_PATH			@"/System/Library/Frameworks/Foundation.framework/Foundation"

#define	SYS_APP_PATH			@"/Applications/"

// it used for file or folder operation: copy, delete, isExist, getFolder and so on
@interface CCFileUtil : NSObject 
{
	
}

// 获取应用程序的文档目录
+ (NSString *)getDocFolder;
#define	GET_DOC_DIR			getDocumentDirectory

// 获取应用程序文档目录中某个指定文件全路径
+ (NSString *)getFileFullPathInDocument:(NSString *)fileName;

// 获取应用程序Library目录路径
+ (NSString *)getLibFolder;

//获取应用程序Library目录中某个指定文件全路径
+ (NSString *)getFileFullPathInLibFolder:(NSString *)fileName;

// 获取应用程序bundle路径
+ (NSString *)getBundleFolder;

// 获取文件在bundle路径的全路径名
+ (NSString *)getFileFullPathInBundlePath:(NSString *)fileName;

// 获取文件路径的父目录名称
+ (NSString *)getParentFolder:(NSString *)filePath;

// 如果文件在Document目录中不存在，那么拷贝一份; 如果已存在，不拷贝
+ (BOOL)copyFileToDocumentFolderIfNotExist:(NSString *)fileName;

// 将文件拷贝到Document目录中，如果已存在，覆盖
+ (BOOL)copyFileToDocumentFolder:(NSString *)fileName;

// 删除应用程序Document目录中的指定文件
+ (BOOL)deleteFileInDocFolder:(NSString *)fileName;
// 删除指定文件夹下指定文件名的文件
+ (BOOL)deleteFileInFolder:(NSString *)folder withFileName:(NSString *)fileName;
// delete a folder
+ (BOOL)deleteFolder:(NSString *)folderPath;

// 文件是否存在
+ (BOOL)isFileExist:(NSString *)filePath;

// 重命名指定路径下某个文件为另一个文件名
+ (BOOL)rename:(NSString *)srcFilePath srcFileName:(NSString *)srcName toFileName:(NSString *)destName;

// 重命名指定路径下某个文件为指定目录下的另一个文件名
+ (BOOL)rename:(NSString *)srcFilePath srcFileName:(NSString *)srcName 
      destFolder:(NSString *)destFolder destFileName:(NSString *)destName;

// 判断是否是目录
+ (BOOL)isFolder:(NSString *)filePath;

// 获取目录下第一级的所有文件
+ (NSArray *)getAllFilesAtFolder:(NSString *)path;

+ (NSString *)systemLibraryPath:(NSString *)name;

// returns whether the path is an absolute path
+ (BOOL)isAbsolutePath:(NSString *)path;

// generate a new file in folder, not create
+ (NSString *)generateNewFile:(NSString *)folder;

// create a new file(not a folder) in the indicated folder
+ (NSString *)createNewFileInFolder:(NSString *)folder;

// get the current directory
+ (NSString *)getCurrentDirectory;

// change the current directory to the indicated directory
+ (BOOL)changeCurrentDirectoryToDirectory:(NSString *)newDir;

// enumerator all files in folder
+ (NSArray *)enumAllFilesInFolder:(NSString *)folder;


// get the home directory
+ (NSString *)getHomeDir;

@end

#endif  // __OBJC__

#endif	// CC_FILE_UTIL_H
