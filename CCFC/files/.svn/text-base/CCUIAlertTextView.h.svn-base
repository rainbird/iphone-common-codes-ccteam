//
//  CCUIAlertTextView.h
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <Foundation/Foundation.h>

// a kind of alertView that contains one UITextField
// **it will make the application not to support shake to edit!
@interface CCUIAlertTextView : UIView 
{
    UIAlertView         *_alertView;
    UITextField         *_field;
}

- (id)initWithTitle:(NSString *)title 
            delegate:(id /*<UIAlertViewDelegate>*/)delegate 
  cancelButtonTitle:(NSString *)cancelButtonTitle 
     okButtonTitles:(NSString *)okButtonTitles;

- (void)show;

@end
