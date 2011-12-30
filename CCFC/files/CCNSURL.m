//
//  CCNSURL.m
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNSURL.h"


@implementation NSURL(cc)

+ (NSString *)telephonePrefix
{
	return @"tel://";
}

+ (NSString *)smsPrefix
{
	return @"sms://";
}

+ (NSString *)mailPrefix
{
	return @"mailto://";
}

+ (NSString *)googleMapPrefix
{
	return @"http://maps.google.com/maps?q=";
}

@end
