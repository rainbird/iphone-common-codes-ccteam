//
//  CCHttp.h
//  CCFC
//
//  Created by xichen on 11-12-21.
//  Copyright 2011 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CCHttp : NSObject 
{
	
}

// send a common synchronous GET request for a url, returns the recieved data
+ (NSData *)sendSynchronousGETRequest:(NSString *)urlStr 
					  withResponse:(NSHTTPURLResponse **)response;


// send a common synchronous POST request for a url, returns the recieved data
+ (NSData *)sendSynchronousPOSTRequest:(NSString *)urlStr 
							  withBody:(NSData *)body
						  withResponse:(NSHTTPURLResponse **)response;


// send a common asynchronous GET request for a url
+ (NSURLConnection *)sendAsynchonousGETRequest:(NSString *)urlStr 
							   withDelegate:(id)delegate;

// send a common asynchronous POST request for a url
+ (NSURLConnection *)sendAsynchonousPOSTRequest:(NSString *)urlStr 
								   withBody:(NSData *)body
							   withDelegate:(id)delegate;


+ (NSString *)localizedStringForStatusCode:(int)statusCode;

@end
