//
//  NSObject+Swizzling.m
//
//  Created by Tim Searle on 29/05/2014.
//  Copyright (c) 2014 Tim Searle. All rights reserved.
//

#import "NSObject+Swizzling.h"
#import <objc/runtime.h>

@implementation NSObject (Swizzling)

+ (void)swizzleMethod:(SEL)original withReplacement:(SEL)replacement forClass:(Class)class classMethod:(BOOL)isClassMethod
{
    Method existingMethod;
    Method replacementMethod;
    
    if (isClassMethod) {
        existingMethod = class_getClassMethod(class, original);
        replacementMethod = class_getClassMethod(class, replacement);
    } else {
        existingMethod = class_getInstanceMethod(class, original);
        replacementMethod = class_getInstanceMethod(class, replacement);
    }
    
    if(class_addMethod(class, original, method_getImplementation(replacementMethod), method_getTypeEncoding(replacementMethod))) {
        class_replaceMethod(class, replacement, method_getImplementation(existingMethod), method_getTypeEncoding(existingMethod));
    } else {
        method_exchangeImplementations(existingMethod, replacementMethod);
    }
}

@end
