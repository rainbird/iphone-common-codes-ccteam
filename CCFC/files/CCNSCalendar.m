//
//  CCNSCalendar.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCNSCalendar.h"


@implementation NSCalendar(cc)

+ (id)GregorianCalendar
{
    return [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
}

- (NSDateComponents *)getComponents
{
    NSInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit; 
    
    NSDate *now = [NSDate date]; 
    return [self components:unitFlags fromDate:now];
}

// you should call this immediately after getComponents method to make the result correctly.
- (int)year:(NSDateComponents *)components
{
    return [components year];
}

// you should call this immediately after getComponents method to make the result correctly.
- (int)month:(NSDateComponents *)components
{
    return [components month];
}

// you should call this immediately after getComponents method to make the result correctly.
- (int)day:(NSDateComponents *)components
{
    return [components day];
}

// you should call this immediately after getComponents method to make the result correctly.
- (int)hour:(NSDateComponents *)components
{
    return [components hour];
}

// you should call this immediately after getComponents method to make the result correctly.
- (int)minute:(NSDateComponents *)components
{
    return [components minute];
}

// you should call this immediately after getComponents method to make the result correctly.
- (int)seconds:(NSDateComponents *)components
{
    return [components second];
}

// you should call this immediately after getComponents method to make the result correctly.
- (int)weekday:(NSDateComponents *)components
{
    return [components weekday];
}


@end
