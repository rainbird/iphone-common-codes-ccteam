//
//  CCTime.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define IS_LEAP_YEAR(year)	((year) % 4 == 0 && (year) % 100 != 0 \
                          || (year) % 400 == 0)

#define DAYS_IN_YEAR(year)	(IS_LEAP_YEAR(year) ? 366 : 365)

@interface CCTime : NSObject 
{
    
}

@end
