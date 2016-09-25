//
//  TestCallback_v1.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

// I am following this example:
// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c

#import <Foundation/Foundation.h>
#import "TestCallback_v1.h"

/// Message (.m) File
@implementation TestCallback_v1

- (void) setDelegate: (id) aDelegate {
    delegate = aDelegate; /// Not retained
}

- (void) doSomething {
    
    NSLog(@"TestCallback_v1::  doSomething .... ");

    
    [delegate myClassWillDoSomething:self];
    
    /* DO SOMETHING */
    
    [delegate myClassDidDoSomething:self];
}
@end