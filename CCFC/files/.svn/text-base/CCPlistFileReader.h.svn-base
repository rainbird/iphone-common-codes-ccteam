//
//  CCPlistFileReader.h
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

// just for plist file that is NSArray type or NSDictionary type
@interface CCPlistFileReader : NSObject 
{	
	id			_internal;
}

+ (NSArray *)readBundleFileToNSArray:(NSString *)fileName;
+ (NSArray *)readDocumentFileToNSArray:(NSString *)fileName;

- (id)initWithBundleFilePlistArr:(NSString *)fileName;
- (id)initWithBundleFilePlistDict:(NSString *)fileName;
- (id)initWithDocumentFilePlistArr:(NSString *)fileName;
- (id)initWithDocumentFilePlistDict:(NSString *)fileName;

- (void)dealloc;

- (NSUInteger)count;

- (id)objectForKey:(id)key;
- (id)objectAtIndex:(unsigned int)index;

@end
