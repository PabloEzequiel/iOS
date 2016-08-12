//
//  TestDelegado_v2.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestDelegado_v1.h"

// I am folloging:
// http://www.migueldiazrubio.com/desarrollo-ios-nsnotificationcenter-protocols-y-delegates/

@implementation ClaseA

- (void)doSomething_claseA {
    /* do lots of stuff */
    

   [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(metodoDelegado:) name:@"FM_metodoDelegado" object:nil];
    
    NSLog(@"TestDelegado_v1 :::> (1) ClaseA ... doSomething_claseA ");
    
}


- (void) metodoDelegado : (NSNotification *) notification {
    
    // El método recibe un objeto de tipo NSNotification cuya propiedad object
    // alberga el objeto pasado como parametro. En este caso hacemos un casting
    // del objeto a NSString.
    
    NSString *cadena = (NSString *)[notification object];
    NSLog(@" (3) doSomething_claseA .. metodoDelegado %@",cadena);
}

@end

@implementation ClaseB

- (void)doSomething_claseB {
    /* do lots of stuff */
  

    NSLog(@"TestDelegado_v1 :::> (2) ClaseB ... doSomething_claseB ");
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"FM_metodoDelegado"
                                                        object:@"mensajito de radio"];
 

}
@end


