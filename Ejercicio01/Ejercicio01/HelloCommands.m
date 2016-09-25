//
//  HelloCommands.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 11/8/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HelloCommands.h"
#import "Persona.h"


@implementation HelloCommands

- (void) doSomeHelloCommands {
    
    NSLog(@"HelloCommands :: doSomeHelloCommands .... ");
    
};

- (void) doManyHelloCommands {
    
    NSLog(@"HelloCommands :: doManyHelloCommands .... ");
    
    /**
     * INSTANCIAMOS OBJETOS
     */
    
    Persona *persona;
    
    // Nota: el new hace un alloc y un init. ..
    // No siempre se usa new, porque hay constructores ....
    
    //  persona = [Persona new];
    persona = [[Persona alloc] init];
    
    
    // LLamo a metodos:
    [persona metodo];
    
    
    /**
     * INVOCAMOS METODOS CON SELECTORES
     */
    
    SEL selector1 = @selector(metodo);
    SEL selector2 = @selector(metodoParaSelector);
    
    [persona performSelector:selector1];
    [persona performSelector:selector2];
    
    [persona metodo];
    //     [persona metodoParaSelector];   // El compilador no me deja. ...
    
    
    
    /**
     * USO DE PROTOCOLOS
     */
    
    // Con el id es la forma mas normal de utilizarlo porque lo que mas no interesa que es que conforme el protocolo ...
    
    id<Protocolo> var;
    
    var = [Persona new];
    
    [var saludar];
    
    
    // [var saludarOpcional];  // Revienta en tiempo de ejecucion ....
    
    
    
    SEL selectorOpcioneal = @selector(saludarOpcional);
    
    if ([var respondsToSelector:selectorOpcioneal]) {
        [var saludarOpcional];
    } else {
        NSLog(@"Opcional no implementado");
    }
    
    
    // NSString *string = [[NSString alloc] initWithFormat:<#(nonnull NSString *), ...#>];
    
    
    
    //    self.loginService = [LoginService new];
    
    // Secuencia:
    
    // alloc init
    // viewDidLoad
    // willAppear
    //
    
    // nil ... es en realidad un objeto .. que si le envias un mensaje (cualquiera)...  te retorna nil .
    
    
    // UN PARA DE OBJETOS INTERESANTES QUE VIENEN CON EL KIT:
    // NSNumber *  : Lo podes instanciar con distintos tipos ....
    
    NSNumber *uno     = [NSNumber numberWithInt:1];
    NSNumber *unoOtro = @(1);
    
    if (uno == unoOtro) {
        NSLog(@"Son Iguales");
    } else {
        NSLog(@"NO Son Iguales");
    }
    
    // Da iguales de casualidad, porque para los mismos espacios de memoria..... es una cuestion de implementacion ....
    // No son mutables.. o sea que despues no lo podes cambiar ....
    // No hay que usar esto porque anda de casualidad
    
    if ([uno isEqual:unoOtro]) {
        NSLog(@"Son Iguales");
    } else {
        NSLog(@"NO Son Iguales");
    }
    
    
    
    if ([uno isEqual:unoOtro]) {
        NSLog(@"Son Iguales");
    } else {
        NSLog(@"NO Son Iguales");
    }
    
    
    //  [[NSDate *date]]
    
    
    //   Colecciones
    //   Tenes dos tipos de Array ....
    //     A estas colecciones no les puede agregar nada una vez que las tenes
    //     NO SON MUTABLES ::::: !
    //     SIRVE por ejemplo si venis desde la base de datos ... y no queres que te los toquen... es bueno que no te lo toquen....
    //          asi evitas que una clase te lo haga percha ....
    
    
    NSArray        *arrayCopados         =  @[@(1), @(2), @(3)];
    NSMutableArray *arrayCopadosMutalbes =  @[@(1), @(2), @(3)].mutableCopy;
    
    
    NSDictionary *dictionaryCopara = @{@"Hola": @(1)}.mutableCopy;
    
    
    NSLog(@"AAA!!! %@", [dictionaryCopara objectForKey:@"Hola"]);
    
    
    for (id obj in arrayCopadosMutalbes ) {
        
        NSLog(@"BBB!!! %@",obj);
    }
    
    NSArray *array;
    NSDictionary *dictionary;
    NSSet *set;
    
    NSValue *valueWithPointer; // :<#(nullable const void *)#>;
    
    
    // Estos... los mutables les podes sacar y poder elementos ...
    
    NSMutableArray *array2;
    NSMutableDictionary *dictionary2;
    
    
    NSMutableArray *mutableArray  = [ NSMutableArray array];
    [mutableArray addObject:@(1)];
    [mutableArray addObject:@"Un Strnge"];
    [mutableArray addObject:[Persona new]];
    
    
    
    
    NSMutableSet *set2;
    
    
    // Coredata es la herramienta de persistencia de Objetive C...
    // Tiene una herramienta asociada con el XCODE que te devuelve el C...
    
    // [[set alloc] init];
    
    
    // Todo los metodos tiene un metodo "description" que es la version de toString
    NSLog(@"hola");
    
    
    NSLog(@"SALLUDADDOR!!! %@", [Persona new]);
    
    
    // Para no have un %f para float ... es mas comodo :
    
    NSLog(@"FLOAT COMODO: %@", @(1.3));
    
    
    // OTRA
    Class clase = [@"hola"  class];
    id hola = [clase new];
    if ([@"hola" isKindOfClass:clase]) {
        
    };
    
    
    // NO entendi bien para que se uutiliza el NS Errotl..
    // NSError *

    
};



@end
