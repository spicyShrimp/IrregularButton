//
//  CircleButton.h
//  IrregularButton
//
//  Created by charles on 2017/11/30.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "IrregularButton.h"

typedef NS_ENUM(NSUInteger, CircleType) {
    CircleTypeTopNone,
    CircleTypeTopLeft,
    CircleTypeTopRight,
    CircleTypeBottomLeft,
    CircleTypeBottomRight,
    CircleTypeAllCircle,
};

@interface CircleButton : IrregularButton

@property(nonatomic, assign)CircleType circleType;

@end
