//
//  CCMemory.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <mach/mach.h>

@interface CCMemory : NSObject 
{

}

// get the info of memory
+ (BOOL)getMemoryInfo:(vm_statistics_data_t *)vmStats;

@end
