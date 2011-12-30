//
//  CCTableTipView.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCTableTipView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CCTableTipView

@dynamic delegate;

- (id)initWithFrame:(CGRect)frame withTableViewFrame:(CGRect)tableViewRect
{
    
    self = [super initWithFrame:frame];
    if (self) 
    {
        _tableView = [[UITableView alloc] initWithFrame:tableViewRect
												  style:UITableViewStylePlain];
		_tableView.layer.masksToBounds = YES;
		_tableView.layer.cornerRadius = 10.0;
		_tableView.alwaysBounceVertical = TRUE;
        _tableView.backgroundColor = [UIColor clearColor];
		
		[self addSubview:_tableView];
		[_tableView release];
    }
    return self;
}

- (void)dealloc 
{
    [super dealloc];
}

- (void)setDelegate:(id)delegate
{
    _tableView.dataSource = delegate;
    _tableView.delegate = delegate;
}

- (void)show
{
	[super show];
}


- (void)setTableViewBgView:(UIImage *)img
{
    UIImageView *bgView = [[UIImageView alloc] initWithImage:img];
    _tableView.backgroundView = bgView;
    [bgView release];
}


- (void)reloadData
{
	[_tableView reloadData];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
	if(!CGRectContainsPoint(_tableView.frame, point))
	{
		[super hide];       // 如果不在_tableView的范围内，界面默认自动消失
	}
}


- (void)drawRect:(CGRect)rect 
{
    [super drawRect:rect];
}


@end
