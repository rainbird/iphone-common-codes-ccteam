//
//  CCUIView.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCUIButton.h"

//创建UI控件的宏
#define	UI_ALLOC_CREATE(UIctlName, x, y, width, height)	[[UIctlName alloc] initWithFrame:CGRectMake((x), (y), (width), (height))]

#define	UI_ALLOC_CREATE_EX(UIctlName, rect)             [[UIctlName alloc] initWithFrame:CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)]

#define	UI_RELEASE(UIctlName)                           [UIctlName release]


//获取View的x、y、宽度、高度
#define	GET_VIEW_X(ctlName)				((ctlName).frame.origin.x)
#define	GET_VIEW_Y(ctlName)				((ctlName).frame.origin.y)
#define	GET_VIEW_WIDTH(ctlName)			((ctlName).frame.size.width)
#define	GET_VIEW_HEIGHT(ctlName)		((ctlName).frame.size.height)

//设置View的x、y、宽度、高度
#define	SET_VIEW_X(ctlName, newX)	\
{				\
    CGRect rect = ctlName.frame;	\
    rect.origin.x = (newX);			\
    ctlName.frame = rect;			\
}

#define	SET_VIEW_Y(ctlName, newY)	\
{				\
    CGRect rect = ctlName.frame;	\
    rect.origin.y = (newY);			\
    ctlName.frame = rect;			\
}

#define	SET_VIEW_WIDTH(ctlName, newWidth)	\
{				\
    CGRect rect = ctlName.frame;	\
    rect.size.width = (newWidth);	\
    ctlName.frame = rect;			\
}

#define	SET_VIEW_HEIGHT(ctlName, newHeight)	\
{				\
    CGRect rect = ctlName.frame;	\
    rect.size.height = (newHeight);	\
    ctlName.frame = rect;			\
}

#define	SET_VIEW_FRAME(ctlName, x, y, width, height)	\
{				\
    CGRect rect = CGRectMake(x, y, width, height);  \
    ctlName.frame = rect;                           \
}

//刷新界面
#define	UPDATE_VIEW(view)	[view setNeedsDisplay]


@interface UIView(cc) 

@property(nonatomic, assign)    CGFloat         x;
@property(nonatomic, assign)    CGFloat         y;
@property(nonatomic, assign)    CGFloat         width;
@property(nonatomic, assign)    CGFloat         height;

// 创建UILabel, 文本居中显示
+ (UILabel *)createLabel:(const CGRect *)rect withTitle:(NSString *)title;

// 创建UIButton, 文本居中显示
+ (UIButton *)createButton:(const CGRect *)rect withTitle:(NSString *)title;

// 移除所有子view
- (void)removeAllSubviews;

// 隐藏所有子view
- (void)hideAllSubViews;

// 创建一个指定区域大小的view
+ (UIView *)createView:(const CGRect *)rect;

// 创建一个和指定view相同大小的view
+ (UIView *)createViewByView:(UIView *)view;

// 创建一个指定区域大小的透明view
+ (UIView *)createTransparentView:(const CGRect *)rect;

// 创建一个和指定view相同大小的透明view
+ (UIView *)createTransparentViewByView:(UIView *)view;

// 显示view
- (void)showView;
// 隐藏view
- (void)hideView;

//获取在指定视图中触摸的位置坐标
- (CGPoint)getTouchPoint:(UIEvent *)event;


// 获取视图的子视图(包括子视图的子视图)中属于指定类型或其子类视图的视图指针数组
- (void)getSubViewIsKindOf:(NSString *)viewStr array:(NSMutableArray *)outArray;

- (void)getSubViewIsKindOf:(NSString *)viewStr 
					 array:(NSMutableArray *)outArray 
				   maxSize:(int)maxSize;


// 获取视图的子视图(包括子视图的子视图)中属于指定类型或其子类视图的视图指针数组
- (void)getSubViewIsMemberOf:(NSString *)viewStr array:(NSMutableArray *)outArray;

- (void)getSubViewIsMemberOf:(NSString *)viewStr 
					   array:(NSMutableArray *)outArray 
					 maxSize:(int)maxSize;

// not ok
- (void)commonFlip;

// get the row count of a view's text	// not ok
- (int)getTextRows;

// 将view视图保存到照片库中
- (void)saveViewToPhotosAlbum;

// returns the UIImage of the view
- (UIImage *)returnUIImageOfView;

// add tap action response on a view
- (UITapGestureRecognizer *)addTapRecognizer:(id)target action:(SEL)sel;

// set the view to rounded corner
- (void)setRoundedCorner:(CGFloat)radius;

// set the view's borderColor and borderWidth
- (void)setBorderColor:(UIColor *)color withBorderWidth:(CGFloat)width;

+ (void)enableViewBelow:(UIView *)foreView viewBelow:(UIView *)viewBelow;

// set the view to be center of another view
- (void)setCenterOf:(UIView *)anotherView;

// move the view upwards
- (void)moveUpwards:(CGFloat)offset;
// move the view downwards
- (void)moveDownwards:(CGFloat)offset;
// move the view leftwards
- (void)moveLeftwards:(CGFloat)offset;
// move the view rightwards
- (void)moveRightwards:(CGFloat)offset;

// get the UIView that is at the index of subviews
- (UIView *)getSubviewByIndex:(int)index;


#if CC_ENABLE_PRIVATE_API && CC_COMPILE_PRIVATE_CLASS
- (id)scriptingInfoWithChildren;	// the struct info of the view's children

// a demo
/*
 <UIView: 0x183d70; frame = (0 20; 320 460); autoresize = W+H; layer = <CALayer: 0x1f6ed0>>
 | <TipView: 0x1f7400; frame = (0 200; 60 40); text = 'Hello'; layer = <CALayer: 0x1f6e10>>
 | <UIRoundedRectButton: 0x1f9490; frame = (260 0; 30 60); opaque = NO; layer = <CALayer: 0x1d3b20>>
 |    | <UIButtonLabel: 0x176160; frame = (0 20; 30 19); text = '确定'; clipsToBounds = YES; opaque = NO; userInteractionEnabled = NO; layer = <CALayer: 0x1760e0>>
 | <UILabel: 0x175920; frame = (0 100; 320 40); text = 'Info:'; clipsToBounds = YES; userInteractionEnabled = NO; layer = <CALayer: 0x1758a0>>
 | <UILabel: 0x175f90; frame = (0 0; 100 30); text = 'Hello'; clipsToBounds = YES; userInteractionEnabled = NO; layer = <CALayer: 0x1f3a90>>
 | <UILabel: 0x1732f0; frame = (100 400; 100 30); text = 'Hello'; clipsToBounds = YES; userInteractionEnabled = NO; layer = <CALayer: 0x174240>>
 | <UIButton: 0x173360; frame = (100 100; 100 30); opaque = NO; layer = <CALayer: 0x173420>>
 |    | <UIImageView: 0x1cfc70; frame = (0 0; 100 30); clipsToBounds = YES; opaque = NO; userInteractionEnabled = NO; layer = <CALayer: 0x1f9910>>
 |    | <UIButtonLabel: 0x173110; frame = (31 5; 37 20); text = 'Hello'; clipsToBounds = YES; opaque = NO; userInteractionEnabled = NO; layer = <CALayer: 0x1730e0>>
 | <UITextField: 0x16f660; frame = (10 40; 100 30); clipsToBounds = YES; opaque = NO; layer = <CALayer: 0x170370>>
 | <UITextView: 0x16d1a0; frame = (10 80; 100 60); text = ''; clipsToBounds = YES; layer = <CALayer: 0x16d100>; contentOffset: {0, 0}>
 |    | <UIWebDocumentView: 0x8a4600; frame = (0 0; 100 50); text = ''; opaque = NO; userInteractionEnabled = NO; layer = <UIWebLayer: 0x168fe0>>
 */
- (id)recursiveDescription;			// the detail description of the view's recursive views

#endif

@end
