//
//  CCFoundation.h
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#ifndef CC_FOUNDATION_H
#define CC_FOUNDATION_H

#ifdef	__OBJC__
#import <Foundation/Foundation.h>

#include "CCNSString.h"
#include "CCNSObject.h"
#include "CCNSThread.h"
#include "CCNSURL.h"
#include "CCNSNumber.h"
#include "CCNSDate.h"
#include "CCNSData.h"
#include "CCNSCalendar.h"
#include "CCNSArray.h"

@interface CCFoundation : NSObject 
{

}

@end

#endif	// __OBJC__

#endif	// CC_FOUNDATION_H
