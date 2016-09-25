//
//  TestCallback_v3.h
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c
// Here's an example that keeps the concepts of delegates out, and just does a raw call back.

#ifndef TestCallback_v3_h
#define TestCallback_v3_h



@interface Foo : NSObject {

}
- (void)doSomethingAndNotifyObject:(id)object withSelector:(SEL)selector;
@end

@interface Bar : NSObject {
    
}
- (void)aMethod;
@end


#endif /* TestCallback_v3_h */
