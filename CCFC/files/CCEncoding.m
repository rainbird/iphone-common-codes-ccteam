//
//  CCEncoding.m
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCEncoding.h"


@implementation CCEncoding

// log all encodings
+ (void)logAllEncodings
{
	const NSStringEncoding *encodings = [NSString availableStringEncodings];
	NSMutableString *str = [[NSMutableString alloc] init];
	NSStringEncoding encoding;
	
	while ((encoding = *encodings++) != 0)
	{
		[str appendFormat:@"%@ is %x\n", [NSString localizedNameOfStringEncoding:encoding], encoding];
	}
	NSLog(@"str is %@", str);
	[str release];
	
	NSLog(@"defaultCStringEncoding is %d", [NSString defaultCStringEncoding]);
}

// unicode			--->			UTF8
+ (const char *)UnicodeToUTF8:(NSString *)src
{
	return [src UTF8String]; 
}

// UTF8				--->			unicode
+ (NSString *)UTF8ToUnicode:(const char *)src
{
	return [NSString stringWithCString:src encoding:NSUTF8StringEncoding];
}


// GB18030			--->			unicode
+ (NSString *)GB18030ToUnicode:(const char *)src
{
	NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
	return [NSString stringWithCString:src encoding:enc];
}

// unicode			--->			GB18030
+ (const char *)UnicodeToGB18030:(NSString *)src
{
	NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
	return [src cStringUsingEncoding:enc]; 
}

// GB18030			--->			UTF8
// GB18030	--> Unicode		-->		UTF8
+ (const char *)GB18030ToUTF8:(const char *)src
{
	NSString *unicode = [self GB18030ToUnicode:src];
	return [self UnicodeToUTF8:unicode];
}

// UTF8				--->			GB18030
// UTF8		-->	Unicode		-->		GB18030
+ (const char *)UTF8ToGB18030:(const char *)src
{
	NSString *unicode = [self UTF8ToUnicode:src];
	return [self UnicodeToGB18030:unicode];
}

// Unicode cStr  to Unicode NSString 
// you should make sure the cStr begins with 0xFF, 0xFE(the unicode flag).
+ (NSString *)UnicodeCStrToUnicode:(const char *)cStr withLen:(int)len
{
	NSData *data = [NSData dataWithBytes:cStr length:len];
	return [[[NSString alloc] initWithData:data encoding:NSUnicodeStringEncoding] autorelease];
}


@end
