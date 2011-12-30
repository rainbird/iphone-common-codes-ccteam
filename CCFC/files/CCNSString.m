//
//  CCNSString.m
//  CCFC_IPHONE
//
//  Created by  xuchen(陈旭)， xichen(陈曦)， qq：511272827 on 10-11-15.
//  Copyright 2010 cc_team. All rights reserved.
//
 
#include <wchar.h>

#ifdef	__OBJC__
#import "CCNSString.h"
#import "CCLog.h"

@implementation  NSString(cc)

// 获取字符在字符串第一次出现的位置
- (NSInteger)firstIndexOfChar:(unichar)ch
{
	return [self firstIndexOfChar:ch withAppearCount:1];
}

// 获取字符在字符串最后一次出现的位置
- (NSInteger)lastIndexOfChar:(unichar)ch
{
	for(NSInteger i = self.length - 1; i >= 0; i--)
	{
		if(ch == [self characterAtIndex:i])
		{
			return i;
		}
	}
	
	return -1;		// 没找到
}


// 获取字符在字符串第N次出现的位置
- (NSInteger)firstIndexOfChar:(unichar)ch withAppearCount:(NSInteger)count
{
	NSInteger appearCount = 0;
	
	for(NSInteger i = 0; i < self.length; i++)
	{
		if(ch == [self characterAtIndex:i])
		{
			appearCount++;
			if(appearCount == count)
			{
				return i;
			}
		}
	}
	
	return -1;		// 没找到
}

- (NSString *)returnTrimmed
{
    NSMutableString *temp = [NSMutableString stringWithString:self];
    [temp trim];
    return temp;
}

// 根据字符串的字体大小获取字符串的像素长度
- (CGFloat)getStrPixelLenByFontSize:(CGFloat)fontSize
{
	CGSize size = [self sizeWithFont:[UIFont systemFontOfSize:fontSize]];
	return size.width;
}

// 根据字符串的字体大小获取字符串的像素高度
- (CGFloat)getStrPixelHeightByFontSize:(CGFloat)fontSize
{
	CGSize size = [self sizeWithFont:[UIFont systemFontOfSize:fontSize]];
	return size.height;
}

// 获取字符串中字符下标从前到后，总长度小于等于指定像素长度的最大下标的值
- (NSInteger)getMaxIndexLessEqualToLen:(CGFloat)fontSize maxLen:(CGFloat)maxLen
{
	CGFloat sumLen = 0;
	for(NSInteger i = 0; i < self.length; i++)
	{
		NSString *temp = [self substringWithRange:NSMakeRange(i, 1)];	// 获取当前1个字符对应的字符串
		CGFloat currentCharPixelLen = [temp getStrPixelLenByFontSize:fontSize];
		
		sumLen += (CGFloat)currentCharPixelLen;		// 累计当前的总长度
		if(sumLen > maxLen)
		{
			return i - 1;
		}
		else if(sumLen == maxLen)
		{
			return i;
		}
		else 
		{
			continue;
		}
	}
	
	return self.length - 1;
}

// print each unichar	
- (void)print
{
	for(int i = 0; i < [self length]; ++i)
		NSLog(@"%C", [self characterAtIndex:i]);
}

// returns the system library path of the indicate name
- (NSString *)systemLibraryPath
{
	return [NSString stringWithFormat:
		@"/System/Library/Frameworks/%@.framework/%@", self, self];
}

// returns the empty string
+ (NSString *)emptyString
{
	return @"";
}

// returns the text char count of the string, eg, SMS's character count
- (int)calculateTextCharCount
{
	float number = 0.0;

	for(int i = 0; i < [self length]; ++i)
	{
		NSString *str = [self substringWithRange:NSMakeRange(i, 1)];
		LOG_STR(str);
		if([str lengthOfBytesUsingEncoding:NSUTF8StringEncoding] == 3)
		{
			LOG_DOUBLE(number);
			number++;
		}
		else
		{
			LOG_DOUBLE(number);
			number = number + 0.5;
		}
	}
	
	return ceil(number);	
}

// returns the trimmed string that be trimmed not only in the beginning and end, also in the middle of the string
- (NSString *)returnTrimmedEntile
{
	NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
	return [self stringByTrimmingCharactersInSet:charSet];
}

// returns whether it contains the str
- (BOOL)containsStr:(NSString *)str
{
	return ([self rangeOfString:str].location != NSNotFound);
}

// returns whether the string is in strArr(whether the strArr contains at least one string that is equalToString self)
- (BOOL)stringInArr:(NSArray *)strArr
{
	for(NSString *temp in strArr)
		if([self isEqualToString:temp])
			return TRUE;
	return FALSE;
}

@end


@implementation NSMutableString(cc)

- (void)trimBegin
{
	int i;
	for(i = 0; i < self.length; i++)
	{
		unichar ch = [self characterAtIndex:i];
		if(!iswspace(ch))
		{
			break;
		}
	}
	
	if(0 == i)
	{
		return;
	}
	
	[self deleteCharactersInRange:NSMakeRange(0, i)];
}

- (void)trimEnd
{
	int i;
	for(i = self.length - 1; i >= 0; i--)
	{
		unichar ch = [self characterAtIndex:i];
		if(!iswspace(ch))
		{
			break;		//从后朝前找到不是空白字符的位置
		}
	}
	
	if(i == self.length - 1)
	{
		return;
	}
	
	NSUInteger loc = i + 1;
	[self deleteCharactersInRange:NSMakeRange(loc, self.length - loc)];
}

- (void)trim
{
	[self trimBegin];
	[self trimEnd];
}

// same to trim func, but call system function
- (void)trimByCallSystemFunc
{
	CFStringTrimWhitespace((CFMutableStringRef)self); 
}

@end

#endif	//__OBJC__
