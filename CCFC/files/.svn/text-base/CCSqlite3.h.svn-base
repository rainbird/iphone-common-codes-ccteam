//
//  CCSqlite3.h
//  CCFC
//
//  Created by xichen on 11-12-18.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@class CCSqlite3;


@protocol CCSqlite3Delegate

// the row starts with 1.
- (void)onCCSqlite3AnotherRowOK:(CCSqlite3 *)sqlite withRow:(int)row;

@end



@interface CCSqlite3 : NSObject 
{
@private
	sqlite3					*_db;
	
	NSString				*_sql;
	sqlite3_stmt			*_statement;
	
	id<CCSqlite3Delegate>	_delegate;
	int						_row;
}

@property(nonatomic, assign)			id				delegate;

// if you don't want to call getData method, then get the statement by yourself.
@property(nonatomic, assign, readonly)	sqlite3_stmt	*statement;

- (id)initWithSqliteDBFullPath:(NSString *)dbFullPath;
- (void)dealloc;

- (void)setSql:(NSString *)sql;

- (BOOL)prepare;
- (void)getData;

- (void)end;

// set so, we can get the random results
- (void)setRandomReturns:(int)n;

// if set so, the sqlite will returns the rowCount row data, which starts from argument start.
- (void)setNRowsFrom:(int)start withRowCount:(int)rowCount;


@end
