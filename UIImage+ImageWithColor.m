//
//  UIImage+ImageWithColor.m
//
//  Created by Paul Williamson on 25/11/2013.
//  Copyright (c) 2013 Paul Williamson. All rights reserved.
//

#import "UIImage+ImageWithColor.h"

@implementation UIImage (ImageWithColor)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    // Set the rect
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    // Begin a context
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Fill contet with supplied color
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    
    // Make an image from the context
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    // Return it
    return image;
}

@end
