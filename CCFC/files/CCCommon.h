//
//  CCCommon.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define	DO_NOTHING

#define	XUCHEN
#define XICHEN

// 转变成字符串类型
#define	TO_STR(var)	#var
// 数字转换成bool类型字符串
#define	TO_BOOL_STR(intNum)	(((intNum) != 0) ? "true" : "false")

// 标志参数的传入传出类型
#define	IN
#define	OUT
#define	INOUT

#ifdef __STDC__
#define	MACRO_C			__STDC__
#endif	//__STDC__

#ifdef __OBJC__
#define	MACRO_OBJC		__OBJC__
#endif	//__OBJC__

#ifdef __cplusplus
#define	MACRO_CPP		__cplusplus
#endif	//__cplusplus

//属性通用宏；默认是nonatomic类型
#define	PROPERTY_COMMON								@property (nonatomic, assign)
#define	PROPERTY_RETAIN								@property (nonatomic, retain)
#define	PROPERTY_COPY								@property (nonatomic, copy)

// atomic类型的属性
#define	PROPERTY_COMMON_ATOMIC						@property (atomic, assign)
#define	PROPERTY_RETAIN_ATOMIC						@property (atomic, retain)
#define	PROPERTY_COPY_ATOMIC						@property (atomic, copy)


#define	COMMON_INIT_BEGIN	\
			self = [super init];	\
			if(self)		\
			{

#define	COMMON_INIT_END		\
			}		\
			return self;

#define	EQUAL_NULL_RETURN_NIL(obj)	\
			if((obj) == NULL)	\
				return nil;

#define	COMMON_UIVIEW_INIT_BEGIN	\
			self = [super initWithFrame:frame];	\
			if(self)		\
			{

#define	COMMON_UIVIEW_INIT_END		COMMON_INIT_END

// a flag of private api
#ifndef	PRIVATE_FLAG
#define	PRIVATE_FLAG
#endif

// extern
#ifdef __cplusplus
#define	CC_EXTERN		extern	"C"
#else
#define	CC_EXTERN		extern
#endif

@interface CCCommon : NSObject 
{
    
}

@end
