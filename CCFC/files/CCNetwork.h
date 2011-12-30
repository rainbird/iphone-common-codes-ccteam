//
//  CCNetwork.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <ifaddrs.h>
#include <sys/socket.h>
#include <net/if.h>

#define	MACRO_LOCAL_LOOP_IP		@"127.0.0.1"

@interface CCNetwork : NSObject 
{

}

// get the total info of network flow, if returns FALSE, the returns upFlow and downFlow value can't be used.
+ (BOOL)getTotalNetworkFlow:(size_t *)upFlow withDownFlow:(size_t *)downFlow; 

@end
