//
//  CircleButton.m
//  IrregularButton
//
//  Created by charles on 2017/11/30.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "CircleButton.h"

@implementation CircleButton

-(void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    
    self.circleType = self.circleType;
}

-(void)setCircleType:(CircleType)circleType{
    _circleType = circleType;
    
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    switch (circleType) {
        case CircleTypeTopLeft:{
            CGPoint bottomRightPoint = CGPointMake(width, height);
            CGPoint bottomLeftPoint = CGPointMake(0, height);
            
            UIBezierPath *path = [[UIBezierPath alloc]init];
            [path moveToPoint:bottomRightPoint];
            [path addLineToPoint:bottomLeftPoint];
            [path addArcWithCenter:bottomRightPoint radius:MAX(width, height) startAngle:M_PI endAngle:-M_PI_2 clockwise:YES];
            [path addLineToPoint:bottomRightPoint];
            [path closePath];
            self.maskPath = path;
        }
            break;
        case CircleTypeTopRight:{
            CGPoint bottomLeftPoint = CGPointMake(0, height);
            CGPoint topLeftPoint = CGPointMake(0, 0);
            
            UIBezierPath *path = [[UIBezierPath alloc]init];
            [path moveToPoint:bottomLeftPoint];
            [path addLineToPoint:topLeftPoint];
            [path addArcWithCenter:bottomLeftPoint radius:MAX(width, height) startAngle:-M_PI endAngle:0 clockwise:YES];
            [path addLineToPoint:bottomLeftPoint];
            [path closePath];
            self.maskPath = path;
        }
            break;
        case CircleTypeBottomLeft:{
            CGPoint topRightPoint = CGPointMake(width, 0);
            CGPoint bottomRightPoint = CGPointMake(width, height);
            
            UIBezierPath *path = [[UIBezierPath alloc]init];
            [path moveToPoint:topRightPoint];
            [path addLineToPoint:bottomRightPoint];
            [path addArcWithCenter:topRightPoint radius:MAX(width, height) startAngle:M_PI_2 endAngle:M_PI clockwise:YES];
            [path addLineToPoint:topRightPoint];
            [path closePath];
            self.maskPath = path;
        }
            break;
        case CircleTypeBottomRight:{
            CGPoint topLeftPoint = CGPointMake(0, 0);
            CGPoint topRightPoint = CGPointMake(width, 0);
            
            UIBezierPath *path = [[UIBezierPath alloc]init];
            [path moveToPoint:topLeftPoint];
            [path addLineToPoint:topRightPoint];
            [path addArcWithCenter:topLeftPoint radius:MAX(width, height) startAngle:0 endAngle:M_PI_2 clockwise:YES];
            [path addLineToPoint:topLeftPoint];
            [path closePath];
            self.maskPath = path;
        }
            break;
        case CircleTypeAllCircle:{
            CGPoint centerPoint = CGPointMake(width/2, height/2);
            
            UIBezierPath *path = [[UIBezierPath alloc]init];
            [path addArcWithCenter:centerPoint radius:MAX(width/2, height/2) startAngle:0 endAngle:M_PI * 2 clockwise:YES];
            [path closePath];
            self.maskPath = path;
        }
            break;
            
        default:
            break;
    }
}


@end
