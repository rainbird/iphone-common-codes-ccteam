//
//  CCAddressBook.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>

@interface CCAddressBook : NSObject 
{
    NSArray         *_abAllPeople;
    NSArray         *_abGroups;
}

- (id)init;
- (void)dealloc;

- (int)getABRecordCount;
- (int)getABGroupCount;

- (ABRecordRef)getABRecordRefByIndex:(int)index;
- (ABRecordID)getABRecordIDByIndex:(int)index;
- (NSString *)getCompositeNameByIndex:(int)index;
- (NSMutableArray *)getPhoneNumberArrByIndex:(int)index;

// 根据ABRecordRef获取联系人姓名全称
- (NSString *)getFullNameByRecord:(ABRecordRef)record;

// 根据index获取联系人姓名全称
- (NSString *)getFullNameByIndex:(int)index;

@end
