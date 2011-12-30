//
//  CCFileName.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CCFileName : NSObject 
{
@private
	NSString		*_fileName;
}

@property(nonatomic, copy)		NSString		*fileName;

- (id)initWithFileName:(NSString *)fileName;
- (void)dealloc;

// get the extend name of the fileName, xichen.txt, then returns txt
- (NSString *)getExtendName;

// get the main file name of the fileName, xichen.txt, then returns xichen
- (NSString *)getMainName;

@end
