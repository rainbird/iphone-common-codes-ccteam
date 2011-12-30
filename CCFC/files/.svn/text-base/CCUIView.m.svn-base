//
//  CCUIView.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIView.h"
#import <QuartzCore/QuartzCore.h>

@interface UIView(ccPrivate)

- (id)text;
- (id)font;

@end


@implementation UIView(cc) 

@dynamic    x, y, width, height;

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setX:(CGFloat)x
{
    CGRect rect = self.frame;
	if(x != rect.origin.x)
    {
        rect.origin.x = x;			
        self.frame = rect;
    }
}

- (void)setY:(CGFloat)y
{
    CGRect rect = self.frame;
	if(y != rect.origin.y)
    {
        rect.origin.y = y;			
        self.frame = rect;
    }
}

- (void)setWidth:(CGFloat)width
{
    CGRect rect = self.frame;
	if(width != rect.size.width)
    {
        rect.size.width = width;			
        self.frame = rect;
    }
}

- (void)setHeight:(CGFloat)height
{
    CGRect rect = self.frame;
	if(height != rect.size.height)
    {
        rect.size.height = height;			
        self.frame = rect;
    }
}



// 创建UILabel, 文本居中显示
+ (UILabel *)createLabel:(const CGRect *)rect withTitle:(NSString *)title
{
	UILabel *label = [[UILabel alloc] initWithFrame:
            CGRectMake(rect->origin.x, rect->origin.y, rect->size.width, rect->size.height)];
    
	label.text = title;
	label.textColor = [UIColor blackColor];
	label.backgroundColor = [UIColor whiteColor];
	label.textAlignment = UITextAlignmentCenter;
    
	return [label autorelease];
}

// 创建UIButton, 文本居中显示
+ (UIButton *)createButton:(const CGRect *)rect withTitle:(NSString *)title
{
	UIButton *btn = [[UIButton alloc] initWithFrame:
            CGRectMake(rect->origin.x, rect->origin.y, rect->size.width, rect->size.height)];
    
	[btn setTitle:title];
	[btn setTitleColor:[UIColor blackColor]];
	btn.backgroundColor = [UIColor whiteColor];
	btn.titleLabel.textAlignment = UITextAlignmentCenter;
	
	return [btn autorelease];
}


// 移除所有子view
- (void)removeAllSubviews
{
	for(UIView *temp in self.subviews)
		[temp removeFromSuperview];
}

// 隐藏所有子view
- (void)hideAllSubViews
{
	for(UIView *temp in self.subviews)
		temp.hidden = TRUE;
}

// 创建一个指定区域大小的view
+ (UIView *)createView:(const CGRect *)rect
{
	UIView *view = UI_ALLOC_CREATE(UIView, 
								   rect->origin.x, rect->origin.y, 
								   rect->size.width, rect->size.height);
	return [view autorelease];
}

// 创建一个和指定view相同大小的view
+ (UIView *)createViewByView:(UIView *)view
{
	UIView *temp = UI_ALLOC_CREATE(UIView, 
								   view.frame.origin.x, view.frame.origin.y, 
								   view.frame.size.width, view.frame.size.height);
	return [temp autorelease];
}

// 创建一个指定区域大小的透明view
+ (UIView *)createTransparentView:(const CGRect *)rect
{
	UIView *view = [self createView:rect];
	if(!view)
	{
		return nil;
	}
	view.backgroundColor = [UIColor clearColor];
	
	return view;
}

// 创建一个和指定view相同大小的透明view
+ (UIView *)createTransparentViewByView:(UIView *)view
{
	UIView *temp = [self createViewByView:view];
	if(!temp)
	{
		return nil;
	}
	temp.backgroundColor = [UIColor clearColor];
	
	return temp;
}

// 显示view
- (void)showView
{
	self.hidden = FALSE;
}

// 隐藏view
- (void)hideView
{
	self.hidden = TRUE;
}

// 获取在指定视图中触摸的位置坐标
- (CGPoint)getTouchPoint:(UIEvent *)event
{
	UITouch *touch = [[event allTouches] anyObject];
	return [touch locationInView:self];
}

// 获取视图的子视图(包括子视图的子视图)中属于指定类型或其子类视图的视图指针数组
- (void)getSubViewIsKindOf:(NSString *)viewStr array:(NSMutableArray *)outArray
{
	if([self isKindOfClass:NSClassFromString(viewStr)])
		[outArray addObject:self];
	for(UIView *view in self.subviews)
	{
		[view getSubViewIsKindOf:viewStr array:outArray];
	}
}

- (void)getSubViewIsKindOf:(NSString *)viewStr 
					   array:(NSMutableArray *)outArray 
					 maxSize:(int)maxSize
{
	if([self isMemberOfClass:NSClassFromString(viewStr)])
		[outArray addObject:self];
	if([outArray count] == maxSize)
		return;
	for(UIView *view in self.subviews)
	{
		[view getSubViewIsKindOf:viewStr array:outArray];
	}
}

// 获取视图的子视图(包括子视图的子视图)中属于指定类型或其子类视图的视图指针数组
- (void)getSubViewIsMemberOf:(NSString *)viewStr array:(NSMutableArray *)outArray
{
	if([self isMemberOfClass:NSClassFromString(viewStr)])
		[outArray addObject:self];
	for(UIView *view in self.subviews)
	{
		[view getSubViewIsMemberOf:viewStr array:outArray];
	}
}

- (void)getSubViewIsMemberOf:(NSString *)viewStr 
					   array:(NSMutableArray *)outArray 
					 maxSize:(int)maxSize
{
	if([self isMemberOfClass:NSClassFromString(viewStr)])
		[outArray addObject:self];
	if([outArray count] == maxSize)
		return;
	for(UIView *view in self.subviews)
	{
		[view getSubViewIsMemberOf:viewStr array:outArray];
	}
}

// not ok
- (void)commonFlip
{
	[UIView beginAnimations:@"ccAnimation" context:nil]; 
	[UIView setAnimationDuration:1.25]; 
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut]; 	
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self cache:YES];
	[UIView commitAnimations];
}

// get the row count of a view's text	// not ok
- (int)getTextRows
{
	if(![self respondsToSelector:@selector(text)] 
	   || ![self respondsToSelector:@selector(font)])
		return -1;
	
	CGSize size = [[self text] sizeWithFont:[self font]
						constrainedToSize:CGSizeMake([self width], UINT_MAX)
							lineBreakMode:UILineBreakModeWordWrap]; 
	CGSize tempSize = [[self text] sizeWithFont:[self font]];
	
	return (int)ceil(size.height / tempSize.height);
	
}

// 将view视图保存到照片库中
- (void)saveViewToPhotosAlbum
{
	UIImage *viewImg = [self returnUIImageOfView];
	UIImageWriteToSavedPhotosAlbum(viewImg, nil, nil, nil);
}

// returns the UIImage of the view
- (UIImage *)returnUIImageOfView
{
	UIGraphicsBeginImageContext(self.layer.bounds.size);
	[self.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImg = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return viewImg;
}

- (UITapGestureRecognizer *)addTapRecognizer:(id)target action:(SEL)sel
{
	self.userInteractionEnabled=YES;
	UITapGestureRecognizer *tapRecog = 
			[[UITapGestureRecognizer alloc] 
				initWithTarget:target action:sel];
	if(tapRecog == nil)
		return nil;
	
	[self addGestureRecognizer:tapRecog];
	[tapRecog release];
	
	return tapRecog;
}

// set the view to rounded corner
- (void)setRoundedCorner:(CGFloat)radius
{
	self.layer.cornerRadius = radius;
	self.layer.masksToBounds = YES;
}

// set the view's borderColor and borderWidth
- (void)setBorderColor:(UIColor *)color withBorderWidth:(CGFloat)width
{
	self.layer.borderColor = color.CGColor;
	self.layer.borderWidth = width;
}

+ (void)enableViewBelow:(UIView *)foreView viewBelow:(UIView *)viewBelow
{
	foreView.exclusiveTouch = YES;
	foreView.userInteractionEnabled = NO;
	viewBelow.exclusiveTouch = NO;
	viewBelow.userInteractionEnabled = YES;
}

// set the view to be center of another view
- (void)setCenterOf:(UIView *)anotherView
{
	self.center = CGPointMake(anotherView.bounds.size.width / 2, 
							  anotherView.bounds.size.height / 2);
}

// move the view upwards
- (void)moveUpwards:(CGFloat)offset
{
	CGRect rect = self.frame;
	rect.origin.y -= offset;
	self.frame = rect;
}

// move the view downwards
- (void)moveDownwards:(CGFloat)offset
{
	CGRect rect = self.frame;
	rect.origin.y += offset;
	self.frame = rect;
}

// move the view leftwards
- (void)moveLeftwards:(CGFloat)offset
{
	CGRect rect = self.frame;
	rect.origin.x -= offset;
	self.frame = rect;
}

// move the view rightwards
- (void)moveRightwards:(CGFloat)offset
{
	CGRect rect = self.frame;
	rect.origin.x += offset;
	self.frame = rect;
}

// get the UIView that is at the index of subviews
- (UIView *)getSubviewByIndex:(int)index
{
	return [self.subviews objectAtIndex:index];
}

@end
