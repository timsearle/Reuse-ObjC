//
//  NSObject+Swizzling.h
//
//  Created by Tim Searle on 29/05/2014.
//  Copyright (c) 2014 Tim Searle. All rights reserved.
//

@interface NSObject (Swizzling)

/*! Switch the implementation of one method at runtime with another method (swizzling).
 *\param original The selector of the method that you wish to replace
 *\param replacement The selector of the method whose implementation will replace the original
 *\param class The Class whose method is being swizzled
 *\param isClassMethod A flag to specify whether or not the methods being swizzled is a class method. 
 * NO will treat the methods as instance methods.
 */
+ (void)swizzleMethod:(SEL)original withReplacement:(SEL)replacement forClass:(Class)class classMethod:(BOOL)isClassMethod;

@end
