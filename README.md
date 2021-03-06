Reuse-ObjC
==========


## Overview

Compilation of reusable classes, categories and snippets for use in Objective-C projects. This list may grow or shrink over time as I find new, interesting implementations of functionality I find myself frequently using.


#### Files

 * **UITableView+Extended.h/m**

 	A small category that provides a wrapper method that helps ensure `beginUpdates` is always followed by `endUpdates`, taking a block as a parameter to perform your batch updates on a `UITableView`. Inspired by the `UICollectionView` `performBatchUpdates:completion:`
 	
 * **UITableViewCell+Extended.h/m**
 
 	A category on `UITableViewCell` that adds simple functionality for a covenience method that is helpful when register nibs with `UITableViews`. 
 	
 	E.g.:
 	`[self.tableView registerNib:[MyTableViewCell associatedNib] forCellReuseIdentifier:NSStringFromClass([]MyTableViewCell class])];`
 	
 * **NSObject+Swizzling.h/m**

	A useful method that will swizzle the implementations of two methods at runtime. Supports instance methods and class methods.
 	
#### Instructions

For application-wide support, import **Reuse.h** into your project's `.pch` file. 

## Author

Tim Searle

## License

Reuse-Objc is available under the MIT license. See the LICENSE file for more info.
