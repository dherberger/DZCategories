//
//  UIColor+Frame.m
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "UIColor+Effect.h"

@implementation UIColor (Effect)

- (UIColor *)lighterColor
{
    float h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a]) {
        return [UIColor colorWithHue:h saturation:s brightness:MIN(b * 1.3, 1.0) alpha:a/2];
    }
    return nil;
}

- (UIColor *)darkerColor
{
    float h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b  alpha:&a]) {
        return [UIColor colorWithHue:h saturation:s brightness:b * 0.75 alpha:a];
    }
    return nil;
}

@end
