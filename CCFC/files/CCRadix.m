//
//  CCRadix.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#include "CCRadix.h"


@implementation CCRadix

+ (NSString *)get2RadixStr:(unsigned)n
{
	return [self getRadixStr:n withRadix:2];
}

+ (NSString *)get8RadixStr:(unsigned)n
{
    return [self getRadixStr:n withRadix:8];
}

+ (NSString *)get10RadixStr:(unsigned)n
{
    return [self getRadixStr:n withRadix:10];
}

+ (NSString *)get16RadixStr:(unsigned)n
{
    NSMutableString *ret = [NSMutableString string];
	while (n)
	{
		int temp = n % 16;
		if(temp >= 10)
			temp = 'A' + temp - 10;
		
		if(temp < 10)
			[ret insertString:[NSString stringWithFormat:@"%d", temp] 
                      atIndex:0];
		else
			[ret insertString:[NSString stringWithFormat:@"%c", temp] 
					  atIndex:0];
		
		n /= 16;
	}
	return ret;
}

// you should make sure the radix argument is less or equal to 10.
+ (NSString *)getRadixStr:(unsigned)n withRadix:(SMALL_INT)radix
{
    NSMutableString *ret = [NSMutableString string];
	while (n)
	{
		int temp = n % radix;
		[ret insertString:[NSString stringWithFormat:@"%d", temp] 
				  atIndex:0];
		n /= radix;
	}
	return ret;
}

+ (unsigned)getValueFromStr:(NSString *)str withRadix:(SMALL_INT)radix
{
    int len = [str length];
    if(len == 0)
        return  0;
    
    unsigned sum = 0;
    for(int i = len - 1; i >= 0; --i)
    {
        sum += ([str characterAtIndex:i] - '0') * pow(radix, len - i - 1);
    }
    return sum;
}

// you should make sure the srcStr with srcRadix is valid and not overflow to UINT_MAX.
+ (NSString *)getRadixStr:(NSString *)srcStr 
                 srcRadix:(SMALL_INT)srcRadix 
                destRadix:(SMALL_INT)destRadix
{
    unsigned n = [self getValueFromStr:srcStr withRadix:srcRadix];
    return [self getRadixStr:n withRadix:destRadix];
}

@end
