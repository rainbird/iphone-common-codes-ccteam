//
//  CCNSData.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum 
{
	NSDATA_UNIT_ONE		= 1,
	NSDATA_UNIT_TWO		= 2,
	NSDATA_UNIT_FOUR	= 4,
	
	NSDATA_UNIT_MAX
}NSDATA_UNIT;


@interface NSData(cc)
    
// 将UTF8格式的数据进行URL编码,返回编码后的总字节
- (int)URLEncode:(char *)dest len:(const int)destLen;

// 打印每个字符
- (void)print;

// 已指定字符个数为单位打印数据
- (void)printWithUint:(NSDATA_UNIT)unit;

// returns the string that converts from the UTF8 encoding data
- (NSString *)UTF8Str;

@end
