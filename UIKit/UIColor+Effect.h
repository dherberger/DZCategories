//
//  UIColor+Frame.h
//
//  Created by Ignacio Romero Zurbuchen on 3/25/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//

#import <UIKit/UIKit.h>

/**
 * @brief Special effects to be applied to UIColor objects.
 */
@interface UIColor (Effect)

/**
 * Returns a darker color version of current color.
 *
 * @returns A darker color.
 */
- (UIColor *)darkerColor;

/**
 * Returns a lighter color version of current color.
 *
 * @returns A light color.
 */
- (UIColor *)lighterColor;

@end
