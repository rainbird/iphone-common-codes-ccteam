//
//  CCNSString.h
//  CCFC_IPHONE
//
//  Created by  xuchen(陈旭)， xichen(陈曦)， qq：511272827 on 10-11-15.
//  Copyright 2010 cc_team. All rights reserved.
//

#ifndef	CC_NSSTRING
#define	CC_NSSTRING


#ifdef	__OBJC__
#import <Foundation/Foundation.h>

#define		PASCAL_STR				%.*s
#define		LONG_LONG_INT			%lld
#define		LONG_LONG_UINT			%llu
#define		UNICHAR					%C

@interface NSString(cc)

// 获取字符在字符串第一次出现的位置
- (NSInteger)firstIndexOfChar:(unichar)ch;
// 获取字符在字符串最后一次出现的位置
- (NSInteger)lastIndexOfChar:(unichar)ch;
// 获取字符在字符串第N次出现的位置, the appear count starts with 1.
- (NSInteger)firstIndexOfChar:(unichar)ch withAppearCount:(NSInteger)count;

// it won't modify the str, but returns another string that be trimmed.
- (NSString *)returnTrimmed;

// 根据字符串的字体大小获取字符串的像素长度
- (CGFloat)getStrPixelLenByFontSize:(CGFloat)fontSize;

// 根据字符串的字体大小获取字符串的像素高度
- (CGFloat)getStrPixelHeightByFontSize:(CGFloat)fontSize;

// 获取字符串中字符下标从前到后，总长度小于等于指定像素长度的最大下标的值
- (NSInteger)getMaxIndexLessEqualToLen:(CGFloat)fontSize maxLen:(CGFloat)maxLen;

// print each unichar	
- (void)print;

// returns the system library path of the indicate name
- (NSString *)systemLibraryPath;

// returns the empty string
+ (NSString *)emptyString;

// returns the text char count of the string, eg, SMS's character count
- (int)calculateTextCharCount;

// returns the trimmed string that be trimmed not only in the beginning and end, also in the middle of the string
- (NSString *)returnTrimmedEntile;

// returns whether it contains the str
- (BOOL)containsStr:(NSString *)str;

// returns whether the string is in strArr(whether the strArr contains at least one string that is equalToString self)
- (BOOL)stringInArr:(NSArray *)strArr;


@end


@interface NSMutableString(cc)

// 移除字符串首部、尾部、首部和尾部的空白字符（Unicode形式的空格，'\t', '\n'）
- (void)trimBegin;
- (void)trimEnd;
- (void)trim;

// same to trim func, but call system function
- (void)trimByCallSystemFunc;


@end

#endif	//__OBJC__
#endif	//CC_NSSTRING
