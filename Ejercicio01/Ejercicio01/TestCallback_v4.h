//
//  TestCallback_v4.h
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

// I am follogin the example:
// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c

#ifndef TestCallback_v4_h
#define TestCallback_v4_h

@interface Robot: NSObject
+ (void)sayHi:(void(^)(NSString *))callback;
@end

#endif /* TestCallback_v4_h */


