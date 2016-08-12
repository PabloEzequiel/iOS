//
//  TestCallback_v3.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//


// I am Following
// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c

#import <Foundation/Foundation.h>
#import "TestCallback_v3.h"

@implementation Foo

- (void)doSomethingAndNotifyObject:(id)object withSelector:(SEL)selector {
    /* do lots of stuff */
    
    NSLog(@"TestCallback_v3 :::> Foo ... doSomethingAndNotifyObject ");
    
    [object performSelector:selector withObject:self];
}
@end

@implementation Bar

- (void)aMethod {
    
    Foo *foo;
    foo = [[Foo alloc] init];
    
    NSLog(@"TestCallback_v3 :::> Bar ... aMethod ");
 
    
    // This is not compiling!!! may be becouse I have disabled the ARC mode
    // [foo autorelease];
    
    [foo doSomethingAndNotifyObject:self withSelector:@selector(fooIsDone:)];
}

- (void)fooIsDone:(id)sender {
    NSLog(@"TestCallback_v3 :::> Foo Is Done!");
}
@end