//
//  UITableView+Extended.m
//
//  Created by Tim Searle on 29/05/2014.
//  Copyright (c) 2014 Tim Searle. All rights reserved.
//

#import "UITableView+Extended.h"

@implementation UITableView (Extended)

- (void)performBatchUpdates:(void (^)(void))updates
{
    [self beginUpdates];
    updates();
    [self endUpdates];
}

@end
