//
//  TestCallback_v4.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

// I am follogin the example:
// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c

#import <Foundation/Foundation.h>
#import "TestCallback_v4.h"



@implementation Robot

+ (void)sayHi:(void(^)(NSString *))callback {
    // Return a message to the callback
    callback(@"TestCallback_v4 :: Robot ::> Hello to you too!");
}

@end
