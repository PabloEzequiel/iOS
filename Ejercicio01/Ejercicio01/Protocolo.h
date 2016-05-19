//
//  protocolo.h
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 19/5/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Protocolo <NSObject>

- (void) saludar;

@optional

- (void) saludarOpcional;

@end
