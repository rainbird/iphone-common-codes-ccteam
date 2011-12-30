//
//  CCUIAlertTextView.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCUIAlertTextView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CCUIAlertTextView

- (id)initWithTitle:(NSString *)title 
           delegate:(id /*<UIAlertViewDelegate>*/)delegate 
  cancelButtonTitle:(NSString *)cancelButtonTitle 
  okButtonTitles:(NSString *)okButtonTitles
{
    if(self = [super init])
    {
        _alertView = [[UIAlertView alloc] initWithTitle:title
                                                message:@"\n"
                                               delegate:delegate
                                      cancelButtonTitle:cancelButtonTitle
                                      otherButtonTitles:okButtonTitles, nil];
        
        _field = [[UITextField alloc] initWithFrame:
                  CGRectMake(12, 45, 260, 25)];
        _field.backgroundColor = [UIColor whiteColor];
        _field.layer.cornerRadius = 3.0f;
        _field.layer.borderWidth = 2.0f;
        _field.delegate = delegate;
        
        [_alertView addSubview:_field];
        [_field release];
        
        [[UIApplication sharedApplication] setApplicationSupportsShakeToEdit:FALSE];
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)show
{
    [_alertView show];
    [_alertView release];
    [_field becomeFirstResponder];
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
}
    
    
@end
