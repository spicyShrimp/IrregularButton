//
//  IrregularButton.m
//  IrregularButton
//
//  Created by charles on 2017/11/30.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "IrregularButton.h"

@implementation IrregularButton

-(void)setMaskPath:(UIBezierPath *)maskPath{
    _maskPath = maskPath;
    CAShapeLayer *layer = [[CAShapeLayer alloc]init];
    layer.path = maskPath.CGPath;
    self.layer.mask = layer;
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    BOOL res = [super pointInside:point withEvent:event];
    if (res) {
        if (!self.maskPath || [self.maskPath containsPoint:point]) {
            return YES;
        }
        return NO;
    }
    return res;
}

@end
