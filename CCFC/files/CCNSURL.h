//
//  CCNSURL.h
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSURL(cc)

+ (NSString *)telephonePrefix;
+ (NSString *)smsPrefix;
+ (NSString *)mailPrefix;
+ (NSString *)googleMapPrefix;

@end
