//
//  CCRadix.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#ifndef	CC_RADIX_H
#define	CC_RADIX_H

typedef char SMALL_INT;

#ifdef __OBJC__

// it used for radix operation
@interface CCRadix : NSObject 
{

}

+ (NSString *)get2RadixStr:(unsigned)n;
+ (NSString *)get8RadixStr:(unsigned)n;
+ (NSString *)get10RadixStr:(unsigned)n;
+ (NSString *)get16RadixStr:(unsigned)n;

// you should make sure the radix argument is <=10 && > 1.
+ (NSString *)getRadixStr:(unsigned)n withRadix:(SMALL_INT)radix;

+ (unsigned)getValueFromStr:(NSString *)str withRadix:(SMALL_INT)radix;

// you should make sure the srcStr with srcRadix is valid and not overflow to UINT_MAX.
+ (NSString *)getRadixStr:(NSString *)srcStr 
                srcRadix:(SMALL_INT)srcRadix 
                  destRadix:(SMALL_INT)destRadix;


@end

#endif  // __OBJC__
#endif  // CC_RADIX_H