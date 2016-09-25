//
//  TestCallback_v2.h
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//


// More elegant solution using Blocks
// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c

#ifndef TestCallback_v2_h
#define TestCallback_v2_h

@interface TestCallback_v2: NSObject
{
    void (^_completionHandler)(int someParameter);
}

- (void) doSomethingWithCompletionHandler:(void(^)(int))handler;
@end



#endif /* TestCallback_v2_h */
