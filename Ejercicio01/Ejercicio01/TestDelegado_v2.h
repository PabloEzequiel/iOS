//
//  TestDelegado_v2.h
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

#ifndef TestDelegado_v2_h
#define TestDelegado_v2_h

#import <Foundation/Foundation.h>
#import "ViewController.h"

// I am folloging:
// http://www.migueldiazrubio.com/desarrollo-ios-nsnotificationcenter-protocols-y-delegates/





// Definimos el nombre del protocolo
@protocol SegundoViewControllerDelegate;

@interface SegundoViewController : UIViewController {
    // Definimos un atributo delegate del tipo que acabamos
    // de indicar en el protocolo
    id  delegate;
}

// Definimos un atributo delegate del tipo que acabamos de
// indicar en el protocolo
@property (nonatomic, retain) id  delegate;

- (IBAction)llamarAlDelegado:(id)sender;

@end

// En la parte inferior de la cabecera definimos aquellos
// métodos optional y required que nuestro delegado
// quiera o deba implementar.
@protocol SegundoViewControllerDelegate
@optional
- (void) metodoDelegado;
@end



// Con esto indicamos que nuestra clase quiere hacer de delegado para el protocolo
@interface DelegadosViewController : UIViewController <SegundoViewControllerDelegate>;

@end

#endif /* TestDelegado_v2_h */
