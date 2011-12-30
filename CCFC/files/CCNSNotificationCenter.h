//
//  CCNSNotificationCenter.h
//  CCFC
//
//  Created by xichen on 11-12-27.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSNotificationCenter(cc) 

+ (void)defaultCenterAddObserver:(id)observer 
						selector:(SEL)selector 
							name:(NSString *)name 
						  object:(id)obj;


+ (void)defaultCenterAddObserverCommon:(id)observer 
							  selector:(SEL)selector 
								  name:(NSString *)name;


+ (void)defaultCenterAddObserverCommonToSelf:(SEL)selector 
										name:(NSString *)name; 

@end
