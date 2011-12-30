//
//  CCNSNumber.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCNSNumber.h"
#import <math.h>

@implementation NSNumber(cc)

- (BOOL)floatEqualToZero
{
    return FLOAT_EQUAL_TO_ZERO([self floatValue]);
}

- (BOOL)floatEqualToFloat:(NSNumber *)another
{
    return FLOAT_EQUAL_TO_FLOAT([self floatValue], [another floatValue]);
}

// 判断两个整形加法是否溢出
+ (int)addCheckOverflow:(int)a withB:(int)b overFlow:(int *)overFlowFlag
{
	int sum = a + b;
	*overFlowFlag = 0;
	
	if(a > 0 && b > 0 && sum < 0
       || a < 0 && b < 0 && sum > 0)
	{
		*overFlowFlag = 1;
	}
	
	return sum;
}

// 整型转换成字符串,返回转换后的字符串的实际长度
+ (int)itoa:(char *)str maxLen:(const int)maxLen num:(int)n
{
	char temp[32] = {0};
	int i = 0;
	while(n)
	{
		if(i >= 32)
		{
			return -1;
		}
		temp[i++] = (n % 10) + '0';			// 将整型数的各位对应的字符值保存在数组中
		n /= 10;
	}
	
	if(i > maxLen)			// 长度过长，返回0
	{
		return -1;
	}
	
	int len = i;
	int j = 0;
	while (i >= 0) 
	{
		str[j++] = temp[--i];		// 拷贝到外部字符串中
	}
	str[i] = '\0';
    
	return len;
}

// 根据角度获取弧度值
+ (double)getRadiusByDegrees:(double)degrees 
{
	return degrees * M_PI / 180;
}



@end
