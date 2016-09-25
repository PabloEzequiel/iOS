//
//  TestCallback_v1.h
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

// I am following this example:
// http://stackoverflow.com/questions/1015608/how-to-perform-callbacks-in-objective-c

#ifndef TestCallback_v1_h
#define TestCallback_v1_h

/// Header File
@interface TestCallback_v1 : NSObject {
    id delegate;
}
- (void) setDelegate : (id) delegate;
- (void) doSomething;
@end

@interface NSObject(MyDelegateMethods)

- (void) myClassWillDoSomething : (TestCallback_v1 *) classTestCallback_v1;
- (void) myClassDidDoSomething  : (TestCallback_v1 *) classTestCallback_v1;
@end

#endif /* TestCallback_v1_h */



// Note About MyDelegateMethods
// ... NSObject doesn't actually implement these methods. This type of category is called an informal protocol,..
// Instead of an informal protocol, you can also use a formal protocol defined with @protocol.
// If you do that, you'd change the type of the
// delegate setter, and instance variable to be "id <MyClassDelegate>" instead of just "id".




