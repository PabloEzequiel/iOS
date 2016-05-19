//
//  persona.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 19/5/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//
//  https://github.com/PabloEzequiel/iOS/tree/master/Ejercicio01
//  http://iosen.blogspot.com.ar
//

#import "Persona.h"
#import "Protocolo.h"

@implementation Persona

- (void) saludar{
    
    NSLog(@"saludar ... respeto al protocolo .... ");
    
    
};


- (void) metodo {
    
    NSLog(@"Hola Que tal .");
    
};


// Este metodo no lo agrego a la interfaz
// con los cual el compilador no me dejara ...
// pero el selector si me va a permitir ...
- (void) metodoParaSelector {
    
    NSLog(@"Hola Que tal metodoParaSelector");
    
};



//ES EL TO STRING
- (NSString* ) description {
    
    NSLog(@"hola");
    
    return @"SOY EL toString() o description de la clase persona";
    
};

@end
