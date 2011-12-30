//
//  CCUIImageView.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIImageView(cc)

// rotate in indicated angle
- (void)rotate:(float)angle;

// 
- (void)setRotatePoint:(CGPoint)point;

@end
