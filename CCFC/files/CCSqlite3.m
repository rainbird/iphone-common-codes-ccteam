//
//  CCSqlite3.m
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCSqlite3.h"


@implementation CCSqlite3

@synthesize delegate = _delegate;
@synthesize statement = _statement;

- (id)initWithSqliteDBFullPath:(NSString *)dbFullPath
{
	self = [super init];
	int ret;
	if(self)
	{
		ret = sqlite3_open([dbFullPath UTF8String], &_db);
		if(ret != SQLITE_OK)
			return nil;
	}
	return self;
}

- (void)dealloc
{
	[_sql release];
	sqlite3_close(_db);
	[super dealloc];
}

- (void)setSql:(NSString *)sql
{
	if(_sql != sql)
	{
		[_sql release];
		_sql = [sql copy];
	}
}

- (BOOL)prepare
{
	return (sqlite3_prepare_v2(_db, [_sql UTF8String], -1, &_statement, NULL) == SQLITE_OK);
}

- (void)getData
{
	while (sqlite3_step(_statement) == SQLITE_ROW)
	{
		++_row;
		[_delegate onCCSqlite3AnotherRowOK:self withRow:_row];
	}
}

- (void)end
{
	sqlite3_finalize(_statement);
}

// set so, we can get the random results
- (void)setRandomReturns:(int)n
{
	NSString *temp = [NSString stringWithFormat:@" order by random() limit %d", n];
	NSString *final = [_sql stringByAppendingString:temp];
	[self setSql:final];
}

// if set so, the sqlite will returns the rowCount row data, which starts from argument start.
- (void)setNRowsFrom:(int)start withRowCount:(int)rowCount
{
	NSString *temp = [NSString stringWithFormat:@" limit %d,%d", start, rowCount];
	NSString *final = [_sql stringByAppendingString:temp];
	[self setSql:final];
}

@end
