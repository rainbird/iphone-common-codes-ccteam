//
//  RectangleBlock.m
//  PhoneManager
//
//  Created by chenxu on 11-9-11.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "CCRectangleBlock.h"
#import "CCSystem.h"


@implementation CCRectangleBlock
@synthesize blocksPercentage, blocksColor;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
//        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)setBlocksAndColors:(NSUInteger)number blocks:(NSArray*)percentage colors:(NSArray*)color
{
    NSAssert(number == [percentage count] && number == [color count], @"error");
    blocksNumber = number;
    self.blocksPercentage = percentage;
    self.blocksColor = color;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 200, 200, 100, 0.5);
//    self.backgroundColor = [UIColor grayColor];
//    NSLog(@"frame: %@, bounds: %@", NSStringFromCGRect([self frame]), NSStringFromCGRect([self bounds]));
//    CGContextFillRect(context, CGRectOffset([self frame], -20, -10));
    CGContextFillRect(context, [self bounds]);
    CGFloat totalWidth = self.frame.size.width;
    CGFloat totalHeight = self.frame.size.height;
    CGFloat startPoint = 0;
    for (NSUInteger i = 0; i != blocksNumber; ++i) {
        UIColor *color = [blocksColor objectAtIndex:i];
        const CGFloat *colorComponents = CGColorGetComponents([color CGColor]);
        CGFloat blockWidth = totalWidth * [[blocksPercentage objectAtIndex:i] floatValue];
        CGContextSetRGBFillColor(context, colorComponents[0], colorComponents[1], colorComponents [2], colorComponents[3]);
        CGContextFillRect(context, CGRectMake(startPoint, 0, blockWidth, totalHeight));
        startPoint += blockWidth;
    }
    CGContextSetStrokeColorWithColor(context, [[UIColor blueColor] CGColor]);
    CGContextStrokeRect(context, [self bounds]);
//    CGContextStrokeRect(context, CGRectOffset([self frame], -20, -10));
//    CGContextStrokePath(context);
}


- (void)dealloc
{
    [blocksColor release];
    [blocksPercentage release];
    [super dealloc];
}

@end

@implementation Battery
@synthesize level;
@synthesize head;
@synthesize percentage;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        level = [[CCRectangleBlock alloc] initWithFrame:CGRectMake(0, 0, frame.size.width * 0.95, frame.size.height)];
        head = [[UIView alloc] initWithFrame:CGRectMake(frame.size.width * 0.95 + 1, frame.size.height * 0.35, frame.size.width * 0.05 - 1, frame.size.height * 0.3)];
        self.level.backgroundColor = [UIColor grayColor];
        self.head.backgroundColor = [UIColor grayColor];
        float volume = getBatteryLevel();
        [level setBlocksAndColors:1 blocks:[NSArray arrayWithObjects:[NSNumber numberWithFloat:volume], nil] colors:[NSArray arrayWithObjects:[UIColor greenColor], nil]];
        NSLog(@"battery monitoring enabled: %d, volume is: %f", [[UIDevice currentDevice]isBatteryMonitoringEnabled], volume);
        
        volume = getBatteryLevel();
        
        percentage = [[UILabel alloc] initWithFrame:CGRectZero];
        percentage.center = [self center];
        percentage.frame = CGRectMake(self.bounds.size.width / 4, 10, self.bounds.size.width / 2, self.bounds.size.height - 20);
//        percentage.opaque = NO;
        percentage.textAlignment = UITextAlignmentCenter;
        percentage.backgroundColor = [UIColor clearColor];
        percentage.text = [NSString stringWithFormat:@"%d%%", [[NSNumber numberWithFloat:100 * volume] intValue]];
        [self addSubview:level];
        [self addSubview:head];
        [self insertSubview:percentage atIndex:1];
        
        [level release];
        [head release];
        [percentage release];
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    
//    [level drawRect:rect];
}
//- (void)batteryLevelDidChange:(NSNotification*) notification
//{
//    float volume = getBatteryLevel();
//    [level setBlocksAndColors:1 blocks:[NSArray arrayWithObjects:[NSNumber numberWithFloat:volume], nil] colors:[NSArray arrayWithObjects:[UIColor greenColor], nil]];
//    NSLog(@"battery monitoring enabled: %d, volume is: %f", [[UIDevice currentDevice]isBatteryMonitoringEnabled], volume);
//    percentage.text = [NSString stringWithFormat:@"%d%%", [[NSNumber numberWithFloat:volume] intValue]];
//    [self setNeedsDisplay];
//}

- (void)dealloc
{
    [level release];
    [head release];
    [super dealloc];
}

@end
