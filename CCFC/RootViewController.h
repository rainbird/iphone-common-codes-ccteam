//
//  RootViewController.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController 
{
	IBOutlet	UITableView			*_tableView;
	
	UIWebView						*_webView;
	UISearchBar						*_searchBar;
}

@property(nonatomic, retain)	IBOutlet UITableView			*_tableView;

@end
