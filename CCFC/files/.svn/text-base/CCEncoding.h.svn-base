//
//  CCEncoding.h
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

// "陈曦" 的unicode编码为： 
//		0x48 0x96 0xE6 0x66 
// UTF8编码为：
//		0xE9 0x99 0x88 0xE6 0x9B 0xA6 
// GB18030编码为：
//		0xB3 0xC2 0xEA 0xD8
@interface CCEncoding : NSObject 
{

}

// log all encodings
+ (void)logAllEncodings;


// unicode			--->			UTF8
+ (const char *)UnicodeToUTF8:(NSString *)src;

// UTF8				--->			unicode
+ (NSString *)UTF8ToUnicode:(const char *)src;

// GB18030			--->			unicode
+ (NSString *)GB18030ToUnicode:(const char *)src;

// unicode			--->			GB18030
+ (const char *)UnicodeToGB18030:(NSString *)src;

// GB18030			--->			UTF8
// GB18030	--> Unicode		-->		UTF8
+ (const char *)GB18030ToUTF8:(const char *)src;

// UTF8				--->			GB18030
// UTF8		-->	Unicode		-->		GB18030
+ (const char *)UTF8ToGB18030:(const char *)src;

// Unicode cStr  to Unicode NSString 
// you should make sure the cStr begins with 0xFF, 0xFE(the unicode flag).
+ (NSString *)UnicodeCStrToUnicode:(const char *)cStr withLen:(int)len;


@end
