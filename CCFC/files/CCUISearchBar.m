//
//  CCUISearchBar.m
//  CCFC
//
//  Created by xichen on 11-12-27.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUISearchBar.h"


@implementation UISearchBar(cc)

// set the searchBar to be transparent
- (void)setTransparent
{
	[[self.subviews objectAtIndex:0] removeFromSuperview];
}

// create a common searchBar
+ (UISearchBar *)createCommonSearchBar:(CGRect)rect
{
	UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:rect];
	return [searchBar autorelease];
}

@end
