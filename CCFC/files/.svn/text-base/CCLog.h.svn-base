//
//  CCLog.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCUIView.h"
#import "CCCommon.h"

#define	C_LOG(cStr, ...)			printf(cStr, ##__VA_ARGS__)
#define	C_LOG_ENDL(cStr, ...)		printf(cStr"\n", ##__VA_ARGS__)

#define	LOG(cStr, ...)              NSLog(@cStr, ##__VA_ARGS__)

#ifdef __cplusplus
#define	CPP_LOG(cStr)               std::cout << (cStr);
#define	CPP_LOG_ENDL(cStr)          std::cout << (cStr) << std::endl;
#endif

#define LOG_DETAIL(cStr)             \
        NSLog(@"filename: %s line: %d %s", __FILE__, __LINE__, (cStr))

// 输出UIView的rect信息宏
#define	LOG_VIEW_RECT(view)         \
                LOG(#view" rect's x:%f, y:%f, width:%f, height:%f", \
                GET_VIEW_X(view), GET_VIEW_Y(view),             \
                GET_VIEW_WIDTH(view), GET_VIEW_HEIGHT(view))

#define	LOG_VIEW_BOUND(view)         \
				LOG(#view" bound's x:%f, y:%f, width:%f, height:%f", \
				view.bounds.origin.x, view.bounds.origin.y,             \
				view.bounds.size.width, view.bounds.size.height)

// 日志打印进入某函数
#define	LOG_ENTER_FUNC(cStrFunc)	LOG("enter function "#cStrFunc)
// 日志打印离开某函数
#define	LOG_LEAVE_FUNC(cStrFunc)	LOG("leave function "#cStrFunc)

// 成功、失败
#define	LOG_SUCCESS                 LOG("Successfully!")
#define	LOG_FAILED                  LOG("Failed!")

#define	LOG_STARS					LOG("***************************");

#define	LOG_ARR(arr)				LOG("arr is %@", arr);

#define	LOG_HERE					LOG_DETAIL("");

#define	LOG_ID(obj)					LOG(#obj" is %@", (obj));
#define	LOG_STR(str)				LOG(#str" is %@", (str));
#define	LOG_INT(intValue)			LOG(#intValue" is %d", (intValue));
#define	LOG_LONG(longValue)			LOG(#longValue" is %ld", (longValue));
#define	LOG_CHAR(charValue)			LOG(#charValue" is %c", (charValue));
#define	LOG_DOUBLE(doubleValue)		LOG(#doubleValue" is %f", (doubleValue));
#define	LOG_BOOL(b)					LOG(#b" is %s", TO_BOOL_STR(b));
#define	LOG_POINTER(p)				LOG(#p" is %p", (p));

#define	LOG_CSTR(cStr)				LOG(#cStr" is %s", (cStr));

#define	LOG_ARR_EX(arr)						\
				{							\
					LOG(#arr"is %@", arr);	\
					for(id temp in arr)		\
						LOG_ID(temp);		\
				}

#define	LOG_SIZE(size)				LOG(#size" is %@", NSStringFromCGSize(size));
#define	LOG_POINT(p)				LOG(#p" is %@", NSStringFromCGPoint(p));
#define	LOG_RECT(rect)				LOG(#rect" is %@", NSStringFromCGRect(rect));

#define	LOG_SEL(sel)				LOG_CSTR(sel);
#define	LOG_IMP(imp)				LOG_POINTER(imp);

@interface CCLog : NSObject 
{
    
}

+ (void)logDetail:(NSString *)str;

@end
