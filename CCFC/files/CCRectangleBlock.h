//
//  RectangleBlock.h
//  PhoneManager
//
//  Created by chenxu on 11-9-11.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CCRectangleBlock : UIView {
    NSUInteger blocksNumber;
    NSArray *blocksPercentage;
    NSArray *blocksColor;
}
@property(nonatomic, retain) NSArray *blocksPercentage;
@property(nonatomic, retain) NSArray *blocksColor;

- (void)setBlocksAndColors:(NSUInteger)number blocks:(NSArray*)percentage colors:(NSArray*)color;

@end


@interface Battery : UIView{
@private
    CCRectangleBlock *level;
    UIView *head;
    
    UILabel *percentage;
}
@property(nonatomic, retain) CCRectangleBlock *level;
@property(nonatomic, retain) UIView *head;
@property(nonatomic, retain) UILabel *percentage;

@end
