//
//  CCUISearchBar.h
//  CCFC
//
//  Created by xichen on 11-12-27.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UISearchBar(cc)

// set the searchBar to be transparent
- (void)setTransparent;

// create a common searchBar
+ (UISearchBar *)createCommonSearchBar:(CGRect)rect;


@end
