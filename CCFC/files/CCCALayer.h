//
//  CCCALayer.h
//  CCFC
//
//  Created by xichen on 11-12-24.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface CALayer(cc)

+ (void)addTestLayer:(UIView *)view withRect:(CGRect)rect;

- (void)setBg:(UIImage *)img;


@end
