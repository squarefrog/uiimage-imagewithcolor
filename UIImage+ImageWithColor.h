//
//  UIImage+ImageWithColor.h
//
//  Created by Paul Williamson on 25/11/2013.
//  Copyright (c) 2013 Paul Williamson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageWithColor)

/**
 * Return a 1x1 UIImage from a UIColor
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
