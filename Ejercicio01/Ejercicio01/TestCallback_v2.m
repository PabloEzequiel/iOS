//
//  TestCallback_v2.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//




// More elegant solution using Blocks
// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c
//
// But I dont know what is block ...TestCallback


#import <Foundation/Foundation.h>
#import "TestCallback_v2.h"

@implementation TestCallback_v2

- (void) doSomethingWithCompletionHandler:(void(^)(int))handler
{
    // NOTE: copying is very important if you'll call the callback asynchronously,
    // even with garbage collection!
    _completionHandler = [handler copy];
    
    // Do stuff, possibly asynchronously...
    int result = 5 + 3 + 4;
    
    // Call completion handler.
    _completionHandler(result);
    
    // Clean up.
//    [_completionHandler release];    // THIS IS NOT COMPILING!!!!!
//     _completionHandler = nil;
    
    
}

@end