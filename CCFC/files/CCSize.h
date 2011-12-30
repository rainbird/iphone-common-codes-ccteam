//
//  CCSize.h
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CCSize : NSObject 
{
@public
	CGFloat width;
	CGFloat height;
}

- (id)initWithWidth:(CGFloat)width withHeight:(CGFloat)height;
+ (id)sizeWithCCSize:(CCSize *)size;
- (id)initWithCGSize:(CGSize)size;
+ (id)sizeWithCGSize:(CGSize)size;
- (void)dealloc;

- (BOOL)isEqualTo:(CCSize *)anotherSize;
- (BOOL)isEqualToCGSize:(CGSize)size;
- (BOOL)isZero;

- (void)setWidth:(CGFloat)width withHeight:(CGFloat)height;

- (CGSize)toCGSize;

@end
