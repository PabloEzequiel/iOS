//
//  TestDelegado_v2.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//


// I am folloging:
// http://www.migueldiazrubio.com/desarrollo-ios-nsnotificationcenter-protocols-y-delegates/



#import <Foundation/Foundation.h>
#import "TestDelegado_v2.h"



@implementation SegundoViewController

// Hacemos synthesize de la propiedad
@synthesize delegate;

- (IBAction)llamarAlDelegado:(id)sender {
    NSLog(@"Voy a llamar al método delegado");
    // En este punto llamamos al método “metodoDelegado” para que sea ejecutado
    // por parte del que se haya agregado como delegado de nuestro protocolo.
    [delegate metodoDelegado];
}

@end


@implementation DelegadosViewController

// Este es el método que hemos definido dentro del
//  protocolo y que se ejecutará invocandose desde
// el hijo
- (void) metodoDelegado {
    NSLog(@"Estoy escribiendo desde el método delegado");
}

// IMPORTANTE: En mi caso como utilizo Storyboarding,
// en el método prepareForSegue accedemos al
// viewController destino y seteamos con el método
// setDelegate a nuestra clase padre como delegado.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    SegundoViewController *segundoViewController =
    (SegundoViewController *)[segue destinationViewController];
    [segundoViewController setDelegate:self];
    
}


@end


