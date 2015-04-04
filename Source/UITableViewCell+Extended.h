//
//  UITableViewCell+Extended.h
//  
//
//  Created by Tim Searle on 04/04/2015.
//  Copyright (c) 2015 Tim Searle. All rights reserved.
//

@interface UITableViewCell (Extended)

/*! Covenience method to return the associated nib file for a UITableViewCell subclass. 
 * Intended for use when registering a UINib with a UITableView.
 *\returns The associated UINib for the UITableViewCell.
 */
+ (UINib *)associatedNib;

@end
