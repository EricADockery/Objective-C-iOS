//
//  BNRDrawView.m
//  TouchTracker
//
//  Created by John Gallagher on 1/9/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRDrawView.h"
#import "BNRLine.h"

@interface BNRDrawView ()

@property (nonatomic, strong) NSMutableDictionary *linesInProgress;
@property (nonatomic, strong) NSMutableArray *finishedLines;

@end

@implementation BNRDrawView

- (void)drawRect:(CGRect)rect
{
    for (BNRLine *line in self.finishedLines) {
        float redVal, greenVal, blueVal;
        float angle = atan2f(line.begin.y - line.end.y, line.end.x - line.begin.x);
        //normalize atan from [-pi,pi] to [0,2pi]
        if (angle < 0) {
            angle += 2 * M_PI;
        }
        
        //0 to 30deg
        if (angle > 0 && angle <= 1 * M_PI / 5.0)
        {
            redVal = 1;
            greenVal = 1 - [self normalizeAngle:angle from:1 * M_PI / 6.0 to:3 * M_PI / 6.0];
            blueVal = 0;
                       //30 to 90deg
        }
        else if (angle > 1 * M_PI / 6.0 && angle <= 3 * M_PI / 6.0)
        {
            redVal = 0;
            greenVal = [self normalizeAngle:angle from:7 * M_PI / 6.0 to:9 * M_PI / 6.0];
            blueVal = 1;
            
            //90 to 150deg
        }
        
        else if (angle > 3 * M_PI / 6.0 && angle <= 5 * M_PI / 6.0)
        {
            redVal = 0;
            greenVal = 1;
            blueVal = 1 - [self normalizeAngle:angle from:9 * M_PI / 6.0 to:11 * M_PI / 6.0];
            
            //150 to 210deg
        }
        else if (angle > 5 * M_PI / 6.0 && angle <= 7 * M_PI / 6.0)
        {
            redVal = 1 - [self normalizeAngle:angle from:5 * M_PI / 6.0 to:7 * M_PI / 6.0];
            greenVal = 0;
            blueVal = 1;
            //210 to 270deg
        }
        else if (angle > 7 * M_PI / 6.0 && angle <= 9 * M_PI / 6.0)
        {
            redVal = [self normalizeAngle:angle from:11 * M_PI / 6.0 to:13 * M_PI / 6.0];
            greenVal = 1;
            blueVal = 0;
            //270 to 330deg
        }
        else if (angle > 9 * M_PI / 6.0 && angle <= 11 * M_PI / 6.0)
        {
            //330 to 360deg
            
            redVal = [self normalizeAngle:angle from:-M_PI / 6.0 to:M_PI / 6.0];
            greenVal = 1;
            blueVal = 0;

        }
        else
        {
            redVal = 1;
            greenVal = 0;
            blueVal = [self normalizeAngle:angle from:3 * M_PI / 6.0 to:5 * M_PI / 6.0];
        }
        NSLog(@"angle:%f, R:%f, G:%f, B:%f", angle, redVal, greenVal, blueVal);
        [[UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1] set];
        [self strokeLine:line];
    }
    [[UIColor redColor] set];
    for (BNRLine *line in [self.linesInProgress allValues]) {
        [self strokeLine:line];
    }
}

- (float)normalizeAngle:(float)angle
                   from:(float)min
                     to:(float)max
{
    if (angle > max || angle < min) {
        NSLog(@"normalizeAngle out of range,");
    }
    
    return (angle - min) / (max - min);
}
- (instancetype)initWithFrame:(CGRect)r
{
    self = [super initWithFrame:r];

    if (self) {
        self.linesInProgress = [[NSMutableDictionary alloc] init];
        self.finishedLines = [[NSMutableArray alloc] init];
        self.backgroundColor = [UIColor grayColor];
        self.multipleTouchEnabled = YES;
    }

    return self;
}

- (void)strokeLine:(BNRLine *)line
{
    UIBezierPath *bp = [UIBezierPath bezierPath];
    bp.lineWidth = 10;
    bp.lineCapStyle = kCGLineCapRound;

    [bp moveToPoint:line.begin];
    [bp addLineToPoint:line.end];
    [bp stroke];
}


- (void)touchesBegan:(NSSet *)touches
           withEvent:(UIEvent *)event
{
    // Let's put in a log statement to see the order of events
    NSLog(@"%@", NSStringFromSelector(_cmd));

    for (UITouch *t in touches) {
        CGPoint location = [t locationInView:self];

        BNRLine *line = [[BNRLine alloc] init];
        line.begin = location;
        line.end = location;

        NSValue *key = [NSValue valueWithNonretainedObject:t];
        self.linesInProgress[key] = line;
    }

    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet *)touches
           withEvent:(UIEvent *)event
{
    // Let's put in a log statement to see the order of events
    NSLog(@"%@", NSStringFromSelector(_cmd));

    for (UITouch *t in touches) {
        NSValue *key = [NSValue valueWithNonretainedObject:t];
        BNRLine *line = self.linesInProgress[key];

        line.end = [t locationInView:self];
    }

    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches
           withEvent:(UIEvent *)event
{
    // Let's put in a log statement to see the order of events
    NSLog(@"%@", NSStringFromSelector(_cmd));

    for (UITouch *t in touches) {
        NSValue *key = [NSValue valueWithNonretainedObject:t];
        BNRLine *line = self.linesInProgress[key];

        [self.finishedLines addObject:line];
        [self.linesInProgress removeObjectForKey:key];
    }

    [self setNeedsDisplay];
}

- (void)touchesCancelled:(NSSet *)touches
               withEvent:(UIEvent *)event
{
    // Let's put in a log statement to see the order of events
    NSLog(@"%@", NSStringFromSelector(_cmd));

    for (UITouch *t in touches) {
        NSValue *key = [NSValue valueWithNonretainedObject:t];
        [self.linesInProgress removeObjectForKey:key];
    }

    [self setNeedsDisplay];
}

@end
