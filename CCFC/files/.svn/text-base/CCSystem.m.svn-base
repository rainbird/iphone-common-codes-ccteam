//
//  System.m
//  PhoneManager
//
//  Created by chenxu on 11-9-9.
//  Copyright 2011年 __MyComPanyName__. All rights reserved.
//

#import "CCSystem.h"
#import "ifaddrs.h"
#import "arpa/inet.h"
#import <SystemConfiguration/SCSchemaDefinitions.h>
#import <sys/sysctl.h>

@implementation UIDevice(Other)
- (NSString*)getSystemVersion //get system version e.g. 4.3.3(8J2)
{
    NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
    NSUInteger firmwareVersion;
    NSMutableString *temp = [[NSMutableString alloc] init];
    NSMutableString *ultimateSystemVersion = [NSMutableString string];
    if ([systemVersion isEqualToString:@"4.3.3"]) {firmwareVersion = iPhone4_3_3;
        [temp appendString:iPhone4_3_3_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"4.3.2"]) {firmwareVersion = iPhone4_3_2; [temp appendString:iPhone4_3_2_FIRMWARE_ID];}

    if ([systemVersion isEqualToString:@"4.3.1"]) {firmwareVersion = iPhone4_3_1; [temp :iPhone4_3_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"4.3"]) {firmwareVersion = iPhone4_3; [temp appendString:iPhone4_3_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"4.2.1"]) {firmwareVersion = iPhone4_2_1; [temp appendString:iPhone4_2_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"4.1"]) {firmwareVersion = iPhone4_1; [temp appendString:iPhone4_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"4.0.2"]) {firmwareVersion = iPhone4_0_2; [temp appendString:iPhone4_0_2_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"4.0.1"]) {firmwareVersion = iPhone4_0_1; [temp appendString:iPhone4_0_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"4.0"]) {firmwareVersion = iPhone4_0; [temp appendString:iPhone4_0_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"3.1.3"]) {firmwareVersion = iPhone3_1_3; [temp appendString:iPhone3_1_3_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"3.1.2"]) {firmwareVersion = iPhone3_1_2; [temp appendString:iPhone3_1_2_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"3.1"]) {firmwareVersion = iPhone3_1; [temp appendString:iPhone3_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"3.0.1"]) {firmwareVersion = iPhone3_0_1; [temp appendString:iPhone3_0_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"3.0"]) {firmwareVersion = iPhone3_0; [temp appendString:iPhone3_0_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"2.2.1"]) {firmwareVersion = iPhone2_2_1; [temp appendString:iPhone2_2_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"2.2"]) {firmwareVersion = iPhone2_2; [temp appendString:iPhone2_2_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"2.1"]) {firmwareVersion = iPhone2_1; [temp appendString:iPhone2_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"2.0.2"]) {firmwareVersion = iPhone2_0_2; [temp appendString:iPhone2_0_2_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"2.0.1"]) {firmwareVersion = iPhone2_0_1; [temp appendString:iPhone2_0_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"2.0"]) {firmwareVersion = iPhone2_0; [temp appendString:iPhone2_0_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"1.1.4"]) {firmwareVersion = iPhone1_1_4; [temp appendString:iPhone1_1_4_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"1.1.3"]) {firmwareVersion = iPhone1_1_3; [temp appendString:iPhone1_1_3_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"1.1.2"]) {firmwareVersion = iPhone1_1_2; [temp appendString:iPhone1_1_2_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"1.1.1"]) {firmwareVersion = iPhone1_1_1; [temp appendString:iPhone1_1_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"1.0.2"]) {firmwareVersion = iPhone1_0_2; [temp appendString:iPhone1_0_2_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"1.0.1"]) {firmwareVersion = iPhone1_0_1; [temp appendString:iPhone1_0_1_FIRMWARE_ID];}
    if ([systemVersion isEqualToString:@"1.0"]) {firmwareVersion = iPhone1_0; [temp appendString:iPhone1_0_FIRMWARE_ID];}
                                                                                   
    [ultimateSystemVersion appendFormat:@"%@(%@)",systemVersion,temp];
    [temp release];
    return ultimateSystemVersion;                                                                               
    return nil;
}
@end
//取软件版本号
NSString* getSoftwareVersion()
{
//    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString*)kSCPropNetIPv4Addresses];
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey]; 
}

NSString * localWiFiIPAddress()
{ 
    BOOL success; 
    struct ifaddrs * addrs; 
    const struct ifaddrs * cursor; 
    
    success = getifaddrs(&addrs) == 0; 
    if (success) { 
        cursor = addrs; 
        while (cursor != NULL) { 
            // the second test keePs from Picking uP the looPback address 
            if (cursor->ifa_addr->sa_family == AF_INET /*&& (cursor->ifa_flags & IFF_LOOPBACK) == 0*/) 
            { 
                NSString *name = [NSString stringWithUTF8String:cursor->ifa_name]; 
                if ([name isEqualToString:@"en0"])  // Wi-Fi adaPter 
                    return [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)cursor->ifa_addr)->sin_addr)]; 
                NSLog(@"name: %@, address: %@", name, [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)cursor->ifa_addr)->sin_addr)]);
            } 
            cursor = cursor->ifa_next; 
        } 
        freeifaddrs(addrs); 
    } 
    return @"无"; 
}
//获取host的名称
NSString * getHostname()
{
    char baseHostName[256]; // Thanks, Gunnar Larisch
    int success = gethostname(baseHostName, 255);
    if (success != 0) return nil;
    baseHostName[255] = '\0';
    
#if TARGET_IPHONE_SIMULATOR
    return [NSString stringWithFormat:@"%s", baseHostName];
#else
    return [NSString stringWithFormat:@"%s.local", baseHostName];
#endif
}
NSString* getIPAddress()
{
    BOOL success; 
    struct ifaddrs * addrs; 
    const struct ifaddrs * cursor; 
    
    success = getifaddrs(&addrs) == 0; 
    if (success) { 
        cursor = addrs; 
        while (cursor != NULL) { 
            // the second test keePs from Picking uP the looPback address 
            if (cursor->ifa_addr->sa_family == AF_INET /*&& (cursor->ifa_flags & IFF_LOOPBACK) == 0*/) 
            { 
                NSString *name = [NSString stringWithUTF8String:cursor->ifa_name]; 
                if ([name isEqualToString:@"pdp_ip0"])  //  
                    return [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)cursor->ifa_addr)->sin_addr)]; 
                
                NSLog(@"name: %@, address: %@", name, [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)cursor->ifa_addr)->sin_addr)]);
            } 
            cursor = cursor->ifa_next; 
        } 
        freeifaddrs(addrs); 
    } 
    return @"无"; 
}
BOOL memoryInfo(vm_statistics_data_t *vmStats) 
{ 
	mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT; 
	kern_return_t kernReturn = host_statistics(mach_host_self(), HOST_VM_INFO, (host_info_t)vmStats, &infoCount); 
	
	return kernReturn == KERN_SUCCESS; 
} 

BOOL cpuInfo(vm_statistics_data_t *cpuStats) 
{ 
	mach_msg_type_number_t infoCount = HOST_CPU_LOAD_INFO_COUNT; 
	kern_return_t kernReturn = host_statistics(mach_host_self(), HOST_CPU_LOAD_INFO, (host_info_t)cpuStats, &infoCount); 
	
	return kernReturn == KERN_SUCCESS; 
} 

void logMemoryInfo() { 
    vm_statistics_data_t vmStats; 
	
    if (memoryInfo(&vmStats)) { 
        NSLog(@"free: %u\nactive: %u\ninactive: %u\nwire: %u\nzero fill: %u\nreactivations: %u\npageins: %u\npageouts: %u\nfaults: %u\ncow_faults: %u\nlookups: %u\nhits: %u", 
			  vmStats.free_count * vm_page_size, 
			  vmStats.active_count * vm_page_size, 
			  vmStats.inactive_count * vm_page_size, 
			  vmStats.wire_count * vm_page_size, 
			  vmStats.zero_fill_count * vm_page_size, 
			  vmStats.reactivations * vm_page_size, 
			  vmStats.pageins * vm_page_size, 
			  vmStats.pageouts * vm_page_size, 
			  vmStats.faults, 
			  vmStats.cow_faults, 
			  vmStats.lookups, 
			  vmStats.hits 
			  ); 
    } 
} 

void getInterfaceBytes() 
{
    struct ifaddrs *ifa_list = 0, *ifa;
    if (getifaddrs(&ifa_list) == -1)
    {
        return;
    }
	
    uint32_t iBytes = 0;
    uint32_t oBytes = 0;
	
    for (ifa = ifa_list; ifa; ifa = ifa->ifa_next) 
    {
        if (AF_LINK != ifa->ifa_addr->sa_family)
            continue;
		
        if (!(ifa->ifa_flags & IFF_UP) && !(ifa->ifa_flags & IFF_RUNNING))
            continue;
		
        if (ifa->ifa_data == 0)
            continue;
		
        /* Not a loopback device. */
        if (strncmp(ifa->ifa_name, "lo", 2)) 
        {
            struct if_data *if_data = (struct if_data *)ifa->ifa_data;
			
            iBytes += if_data->ifi_ibytes;
            oBytes += if_data->ifi_obytes;
			NSLog(@"ifa->ifa_name is %s, iBytes is %d, oBytes is %d", 
				ifa->ifa_name, iBytes, oBytes);
        }
    }
    freeifaddrs(ifa_list);
}

//caller has the duty to release returned array
CGFloat* stringArrayTofloatArray(NSArray *stringArray)
{
//    NSMutableArray *floatArray;
    NSUInteger number = [stringArray count];
    CGFloat *floatArray = (CGFloat*)calloc(number, sizeof(CGFloat));
    for(int i = 0; i < [stringArray count]; ++i)
    {
        CGFloat value = [[stringArray objectAtIndex:i] floatValue];
        floatArray[i] = value;
    }
    return floatArray;
}

NSDate* getBootTime()
{
    size_t size = sizeof(struct timeval);
//    sysctlbyname("boottime", NULL, &size, NULL, 0);
    struct timeval *time = malloc(sizeof(struct timeval));
    
//    sysctlbyname("boottime", time, &size, NULL, 0);
    
    int mib[2] = {CTL_KERN, KERN_BOOTTIME};
    sysctl(mib, 2, time, &size, NULL, 0);
    NSDate *boot = [NSDate dateWithTimeIntervalSince1970:time->tv_sec];
    NSLog(@"boot is: %@, tv_sec is: %ld", boot, time->tv_sec);
    free(time);
    return  boot;
}

int getWifiFlowIOBytes() 
{	
    struct ifaddrs *ifa_list = 0, *ifa;
    if (getifaddrs(&ifa_list) == -1)
    {
        return 0;
    }
	
    uint32_t iBytes = 0;
    uint32_t oBytes = 0;
	
    for (ifa = ifa_list; ifa; ifa = ifa->ifa_next) 
    {
        if (AF_LINK != ifa->ifa_addr->sa_family)
            continue;
		
        if (!(ifa->ifa_flags & IFF_UP) && !(ifa->ifa_flags & IFF_RUNNING))
            continue;
		
        if (ifa->ifa_data == 0)
            continue;
		
        if (!strcmp(ifa->ifa_name, "en0")) 
        {
            struct if_data *if_data = (struct if_data *)ifa->ifa_data;
			
            iBytes += if_data->ifi_ibytes;
            oBytes += if_data->ifi_obytes;
			NSLog(@"%s :iBytes is %d, oBytes is %d", 
				ifa->ifa_name, iBytes, oBytes);
        }
    }
    freeifaddrs(ifa_list);
	
	return iBytes + oBytes;
}

int getGprs3GFlowIOBytes() 
{	
    struct ifaddrs *ifa_list = 0, *ifa;
    if (getifaddrs(&ifa_list) == -1)
    {
        return;
    }
	
    uint32_t iBytes = 0;
    uint32_t oBytes = 0;
	
    for (ifa = ifa_list; ifa; ifa = ifa->ifa_next) 
    {
        if (AF_LINK != ifa->ifa_addr->sa_family)
            continue;
		
        if (!(ifa->ifa_flags & IFF_UP) && !(ifa->ifa_flags & IFF_RUNNING))
            continue;
		
        if (ifa->ifa_data == 0)
            continue;
		
        if (!strcmp(ifa->ifa_name, "pdp_ip0")) 
        {
            struct if_data *if_data = (struct if_data *)ifa->ifa_data;
			
            iBytes += if_data->ifi_ibytes;
            oBytes += if_data->ifi_obytes;
			NSLog(@"%s :iBytes is %d, oBytes is %d", 
				  ifa->ifa_name, iBytes, oBytes);
        }
    }
    freeifaddrs(ifa_list);
	
	return iBytes + oBytes;
}

NSString *bytesToAvaiUnit(int bytes)
{
	if(bytes < 1024)		// B
	{
		return [NSString stringWithFormat:@"%dB", bytes];
	}
	else if(bytes >= 1024 && bytes < 1024 * 1024)	// KB
	{
		return [NSString stringWithFormat:@"%.1fKB", (double)bytes / 1024];
	}
	else if(bytes >= 1024 * 1024 && bytes < 1024 * 1024 * 1024)	// MB
	{
		return [NSString stringWithFormat:@"%.2fMB", (double)bytes / (1024 * 1024)];
	}
	else	// GB
	{
		return [NSString stringWithFormat:@"%.3fGB", (double)bytes / (1024 * 1024 * 1024)];
	}
}

float getBatteryLevel()
{
    UIDevice *device = [UIDevice currentDevice];
    [device setBatteryMonitoringEnabled:YES];
    NSLog(@"battery state is: %d, battery level is: %f", [device batteryState], [device batteryLevel]);
    return [device batteryLevel];
}

