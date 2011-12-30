//
//  CCDelete.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define	RELEASE(obj)	[obj release]

#define	SAFE_RELEASE(obj)	\
        {		\
            RELEASE(obj);		\
            (obj) = nil;		\
        }


@interface CCDelete : NSObject 
{
    
}

@end
