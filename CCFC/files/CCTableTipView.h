//
//  CCTableTipView.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCBaseTipView.h"

// a kind of CCBaseTipView that owns a tableView
// for linking, you should add QuartzCore.framewrok
@interface CCTableTipView : CCBaseTipView
{
	UITableView			*_tableView;
    id                  _delegate;
}

@property(nonatomic, assign)    id      delegate;


- (id)initWithFrame:(CGRect)frame withTableViewFrame:(CGRect)tableViewRect;
- (void)setDelegate:(id)delegate;
- (void)show;

- (void)setTableViewBgView:(UIImage *)img;
- (void)reloadData;

@end
