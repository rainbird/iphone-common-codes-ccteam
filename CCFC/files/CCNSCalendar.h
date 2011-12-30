//
//  CCNSCalendar.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSCalendar(cc)
    
+ (id)GregorianCalendar;

- (NSDateComponents *)getComponents;


// you should call this immediately after getComponents method to make the result correctly.
- (int)year:(NSDateComponents *)components;

// you should call this immediately after getComponents method to make the result correctly.
- (int)month:(NSDateComponents *)components;

// you should call this immediately after getComponents method to make the result correctly.
- (int)day:(NSDateComponents *)components;

// you should call this immediately after getComponents method to make the result correctly.
- (int)hour:(NSDateComponents *)components;

// you should call this immediately after getComponents method to make the result correctly.
- (int)minute:(NSDateComponents *)components;

// you should call this immediately after getComponents method to make the result correctly.
- (int)seconds:(NSDateComponents *)components;

// you should call this immediately after getComponents method to make the result correctly.
- (int)weekday:(NSDateComponents *)components;

@end
