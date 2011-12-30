//
//  CCNSNumber.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

//单精度浮点数是否可以看成等于0  (默认精确到小数点第六位)
#define	FLOAT_EQUAL_TO_ZERO(floatNumber)                \
        (fabsf((float)(floatNumber) - 0.0f) < (float)1e-6)

// 判断两个单精度浮点数是否近似相等
#define	FLOAT_EQUAL_TO_FLOAT(firstFloat, secondFloat)	\
        FLOAT_EQUAL_TO_ZERO(firstFloat - secondFloat)

@interface NSNumber(cc)
    
- (BOOL)floatEqualToZero;
- (BOOL)floatEqualToFloat:(NSNumber *)another;

// 判断两个整形加法是否溢出
+ (int)addCheckOverflow:(int)a withB:(int)b overFlow:(int *)overFlowFlag;

// 整型转换成字符串,返回转换后的字符串的实际长度
+ (int)itoa:(char *)str maxLen:(const int)maxLen num:(int)n;

// 根据角度获取弧度值
+ (double)getRadiusByDegrees:(double)degrees;


@end
