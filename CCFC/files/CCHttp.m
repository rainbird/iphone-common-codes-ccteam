//
//  CCHttp.m
//  CCFC
//
//  Created by xichen on 11-12-21.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCHttp.h"
#import <Foundation/NSURLRequest.h>
#import <Foundation/NSURLResponse.h>

@implementation CCHttp

// send a synchronous GET request for a url, returns the recieved data
+ (NSData *)sendSynchronousGETRequest:(NSString *)urlStr 
					  withResponse:(NSHTTPURLResponse **)response
{
	NSURL	*url = [NSURL URLWithString:urlStr];  
	NSMutableURLRequest	*request = [NSMutableURLRequest new];  
	[request setURL:url];  
	[request setHTTPMethod:@"GET"]; 
	
	NSData	*data;
	NSHTTPURLResponse *tempResponse;
	NSHTTPURLResponse **tempResponsePtr = &tempResponse;
	if(response != nil)
		tempResponsePtr = response;
	
	data = [NSURLConnection sendSynchronousRequest:request  
								returningResponse:tempResponsePtr error:nil];
	
	if([*tempResponsePtr statusCode] >= 200 && [*tempResponsePtr statusCode] < 300)
	{
		[request release];
		return data;
	}
	 

	return nil;
}

// send a synchronous POST request for a url, returns the recieved data
+ (NSData *)sendSynchronousPOSTRequest:(NSString *)urlStr 
							  withBody:(NSData *)body
						 withResponse:(NSHTTPURLResponse **)response
{
	NSURL	*url = [NSURL URLWithString:urlStr];  
	NSMutableURLRequest	*request = [NSMutableURLRequest new];  
	[request setURL:url];  
	[request setHTTPMethod:@"POST"]; 
	[request setHTTPBody:body];
	
	NSData	*data;
	NSHTTPURLResponse *tempResponse;
	NSHTTPURLResponse **tempResponsePtr = &tempResponse;
	if(response != nil)
		tempResponsePtr = response;
	
	data = [NSURLConnection sendSynchronousRequest:request  
								 returningResponse:tempResponsePtr error:nil];
	
	if([*tempResponsePtr statusCode] >= 200 && [*tempResponsePtr statusCode] < 300)
	{
		[request release];
		return data;
	}
	
	
	return nil;
}

// send a common asynchronous GET request for a url
+ (NSURLConnection *)sendAsynchonousGETRequest:(NSString *)urlStr 
							   withDelegate:(id)delegate
{
	NSURL	*url = [NSURL URLWithString:urlStr]; 
	NSMutableURLRequest	*request = [NSMutableURLRequest new];  
	[request setURL:url];  
	[request setHTTPMethod:@"GET"]; 
	
	NSURLConnection *conn = [NSURLConnection connectionWithRequest:request
										 delegate:delegate];
	[request release];
	return conn;
}


// send a common asynchronous POST request for a url
+ (NSURLConnection *)sendAsynchonousPOSTRequest:(NSString *)urlStr 
								   withBody:(NSData *)body
							   withDelegate:(id)delegate
{
	NSURL	*url = [NSURL URLWithString:urlStr]; 
	NSMutableURLRequest	*request = [NSMutableURLRequest new];  
	[request setURL:url];  
	[request setHTTPMethod:@"POST"]; 
	[request setHTTPBody:body];
	
	NSURLConnection *conn = [NSURLConnection connectionWithRequest:request
														  delegate:delegate];
	[request release];
	return conn;
}


+ (NSString *)localizedStringForStatusCode:(int)statusCode
{
	return [NSHTTPURLResponse localizedStringForStatusCode:statusCode];
}

@end
