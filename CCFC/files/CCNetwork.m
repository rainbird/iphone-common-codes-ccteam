//
//  CCNetwork.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNetwork.h"


@implementation CCNetwork

// get the total info of network flow, if returns FALSE, the returns upFlow and downFlow value can't be used.
+ (BOOL)getTotalNetworkFlow:(size_t *)upFlow withDownFlow:(size_t *)downFlow 
{
    struct ifaddrs *ifa_list = 0, *ifa;
    if (getifaddrs(&ifa_list) < 0)
    {
        return FALSE;
    }
	
	*upFlow = 0;
	*downFlow = 0;
	
    for (ifa = ifa_list; ifa; ifa = ifa->ifa_next) 
    {
        if (ifa->ifa_addr->sa_family != AF_LINK)
            continue;
		
        if (!(ifa->ifa_flags & IFF_UP) && !(ifa->ifa_flags & IFF_RUNNING))
            continue;
		
        if (ifa->ifa_data == 0)
            continue;
		
        if (strncmp(ifa->ifa_name, "lo", 2)) 
        {
            struct if_data *if_data = (struct if_data *)ifa->ifa_data;
			
            *downFlow += if_data->ifi_ibytes;
            *upFlow += if_data->ifi_obytes;
        }
    }
    freeifaddrs(ifa_list);
	return TRUE;
}

@end
