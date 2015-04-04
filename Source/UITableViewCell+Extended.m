//
//  UITableViewCell+Extended.m
//  
//
//  Created by Tim Searle on 04/04/2015.
//  Copyright (c) 2015 Tim Searle. All rights reserved.
//

#import "UITableViewCell+Extended.h"

@implementation UITableViewCell (Extended)

+ (UINib *)associatedNib
{
    return [UINib nibWithNibName:NSStringFromClass([self class]) bundle:[NSBundle mainBundle]];
}

@end
