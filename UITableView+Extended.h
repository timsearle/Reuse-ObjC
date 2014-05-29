//
//  UITableView+Extended.h
//
//  Created by Tim Searle on 29/05/2014.
//  Copyright (c) 2014 Tim Searle. All rights reserved.
//

@interface UITableView (Extended)

/*! Wrapper method to allow a block of updates to be passed for batch processing,
 * beginUpdates and endUpdates are handled implicitly by this method.
 *\param updates A void returning block that contains all the batch operations to be performed
 * on the receiver.
 */
- (void)performBatchUpdates:(void (^)(void))updates;

@end
