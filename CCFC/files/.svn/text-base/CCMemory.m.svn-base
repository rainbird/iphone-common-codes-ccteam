//
//  CCMemory.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCMemory.h"


@implementation CCMemory

// get the info of memory
+ (BOOL)getMemoryInfo:(vm_statistics_data_t *)vmStats
{ 
	mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT; 
	kern_return_t ret = host_statistics(mach_host_self(), HOST_VM_INFO, (host_info_t)vmStats, &infoCount); 
	
	return ret == KERN_SUCCESS; 
}


@end
