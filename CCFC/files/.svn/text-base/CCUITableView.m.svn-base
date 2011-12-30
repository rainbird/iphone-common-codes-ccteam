//
//  CCUITableView.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUITableView.h"


@implementation UITableView(cc)

- (void)scrollToBottom:(BOOL)animated
{
	NSUInteger lastSection = [self numberOfSections] - 1;
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self numberOfRowsInSection:lastSection] 
												inSection:lastSection];
	[self scrollToRowAtIndexPath:indexPath
				atScrollPosition:UITableViewScrollPositionBottom
						animated:animated];
}

@end
