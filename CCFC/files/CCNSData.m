//
//  CCNSData.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCNSData.h"


@implementation NSData(cc)

// 将UTF8格式的数据进行URL编码,返回编码后的总字节
- (int)URLEncode:(char *)dest len:(const int)destLen
{ 
	int i; 
	int j = 0;
	char ch; 
    char *src = (char *)[self bytes];
	
	for (i = 0; (i < [self length]) && (j < destLen); i++) 
	{ 
		ch = src[i]; 
		if ( ((ch >= 'A') && (ch <= 'Z')) 
			|| ((ch >= 'a') && (ch <= 'z'))
			|| ((ch >= '0') && (ch <= '9')))
		{ 
			dest[j++] = ch;			// 普通ASCII字符
		}
		else if(' ' == ch)
		{ 
			dest[j++] = '+'; 
		} 
		else 
		{ 
			if (j + 3 < destLen)	// 是中文
			{ 
				sprintf(dest + j, "%%%02X", (unsigned char)ch); 
				j += 3; 
			} 
			else					// 出现保存空间不足的错误
			{ 
				return 0; 
			} 
		} 
	} 
	
	dest[j] = '\0';					// char*字符串结尾符
	return j; 
}

// 打印每个字符
- (void)print
{
	const unsigned char *bytes = (const unsigned char *)[self bytes];
	for(int i = 0; i < [self length]; ++i)
	{
		printf("%#X ", bytes[i]);
	}
}

// 已指定字符个数为单位打印数据
- (void)printWithUint:(NSDATA_UNIT)unit
{
	switch (unit)
	{
		case NSDATA_UNIT_ONE:
		{
			[self print];
		}
		break;
			
		case NSDATA_UNIT_TWO:
		{
			const unsigned short *bytes = (const unsigned short *)[self bytes];
			int unitCnt = [self length] / unit;
			int last = [self length] - unitCnt * unit;
			
			for(int i = 0; i < unitCnt; ++i)
				printf("%#X ", bytes[i]);
			
			if(last != 0)
				printf("%#X ", *(const unsigned char *)(bytes + unitCnt));
		}
		break;
			
		case NSDATA_UNIT_FOUR:
		{
			const unsigned int *bytes = (const unsigned int *)[self bytes];
			int unitCnt = [self length] / unit;
			int last = [self length] - unitCnt * unit;
			
			for(int i = 0; i < unitCnt; ++i)
				printf("%#X ", bytes[i]);
			
			for(int i = 0; i < last; ++i)
				printf("%#X ", *(const unsigned char *)(bytes + unitCnt + i));
		}
		break;
			
		default:
			break;
	}
	
}

// returns the string that converts from the UTF8 encoding data
- (NSString *)UTF8Str
{
	return [[[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding] autorelease];
}

@end
