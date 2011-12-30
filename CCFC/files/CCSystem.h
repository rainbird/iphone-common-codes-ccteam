//
//  System.h
//  PhoneManager
//
//  Created by chenxu on 11-9-9.
//  Copyright 2011年 __MyComPanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <mach/mach.h>
#include <ifaddrs.h>
#include <sys/socket.h>
#include <net/if.h>

#define iPhone4_3_3_FIRMWARE_ID @"8J2"
#define iPhone4_3_2_FIRMWARE_ID @"8H7"
#define iPhone4_3_1_FIRMWARE_ID @"8G4"
#define iPhone4_3_FIRMWARE_ID @"8F190"
#define iPhone4_2_1_FIRMWARE_ID @"8C148"
#define iPhone4_1_FIRMWARE_ID @"8B117"
#define iPhone4_0_2_FIRMWARE_ID @"8A400"
#define iPhone4_0_1_FIRMWARE_ID @"8A306"
#define iPhone4_0_FIRMWARE_ID @"8A293"


#define iPhone3_1_3_FIRMWARE_ID @"7E18"
#define iPhone3_1_2_FIRMWARE_ID @"7D11"
#define iPhone3_1_FIRMWARE_ID @"7C144"
#define iPhone3_0_1_FIRMWARE_ID @"7A400"
#define iPhone3_0_FIRMWARE_ID @"7A341"

#define iPhone2_2_1_FIRMWARE_ID @"5H11"
#define iPhone2_2_FIRMWARE_ID @"5G77"
#define iPhone2_1_FIRMWARE_ID @"5F136"
#define iPhone2_0_2_FIRMWARE_ID @"5C1"
#define iPhone2_0_1_FIRMWARE_ID @"5B108"
#define iPhone2_0_FIRMWARE_ID @"5A347"
#define iPhone1_1_4_FIRMWARE_ID @"4A102"
#define iPhone1_1_3_FIRMWARE_ID @"4A93"
#define iPhone1_1_2_FIRMWARE_ID @"3B48b"
#define iPhone1_1_1_FIRMWARE_ID @"3A109a"
#define iPhone1_0_2_FIRMWARE_ID @"1C28"
#define iPhone1_0_1_FIRMWARE_ID @"1C25"
#define iPhone1_0_FIRMWARE_ID @"1A543a"

typedef enum {
    iPhone4_3_3,
    iPhone4_3_2,
    iPhone4_3_1,
    iPhone4_3 ,
    iPhone4_2_1 ,
    iPhone4_1,
    iPhone4_0_2, 
    iPhone4_0_1, 
    iPhone4_0, 
    
    
    iPhone3_1_3, 
    iPhone3_1_2, 
    iPhone3_1, 
    iPhone3_0_1, 
    iPhone3_0, 
    
    iPhone2_2_1, 
    iPhone2_2, 
    iPhone2_1, 
    iPhone2_0_2, 
    iPhone2_0_1, 
    iPhone2_0, 
    iPhone1_1_4, 
    iPhone1_1_3, 
    iPhone1_1_2, 
    iPhone1_1_1, 
    iPhone1_0_2, 
    iPhone1_0_1, 
    iPhone1_0 
}IPHONE_FIRMWARE_VERSION;

@interface UIDevice(Other)
- (NSString*)getSystemVersion;
@end
    

NSString* getSoftwareVersion();

NSString * localWiFiIPAddress();
NSString* getIPAddress();

NSString * getHostname();

// 获取内存信息
BOOL memoryInfo(vm_statistics_data_t *vmStats);

CGFloat* stringArrayTofloatArray(NSArray *stringArray);
NSDate* getBootTime();
float getBatteryLevel();

// 获取流量信息
int getWifiFlowIOBytes(); 
int getGprs3GFlowIOBytes(); 


// 字节转换成B,KB, MB, GB
NSString *bytesToAvaiUnit(int bytes);








