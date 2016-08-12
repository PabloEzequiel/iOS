//
//  ViewController.m
//  Ejercicio01
//
//  Created by Pablo Ezequiel Inchausti on 19/5/16.
//  Copyright © 2016 Pablo Ezequiel Inchausti. All rights reserved.
//

#import "ViewController.h"
#import "Persona.h"
#import "HelloCommands.h"
#import "TestCallback_v1.h"
#import "TestCallback_v2.h"
#import "TestCallback_v3.h"
#import "TestCallback_v4.h"
#import "TestDelegado_v1.h"
#import "TestDelegado_v2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * OBJECTIVE C - Subclass
     */
    HelloCommands *helloCommands;
    
    helloCommands = [[HelloCommands alloc] init];
    
    [helloCommands doSomeHelloCommands];
    
    [helloCommands doManyHelloCommands];
    
    
    /**
     * TestCallback_v1
     */
    TestCallback_v1 *classTestCallback_v1;
    
    classTestCallback_v1 = [[TestCallback_v1 alloc] init];
    
    [classTestCallback_v1 doSomething];
    
    /**
     * TestCallback_v2
     */
    TestCallback_v2 *callBack_v2 = [[TestCallback_v2 alloc] init];
    int x = 2;
    [callBack_v2 doSomethingWithCompletionHandler:^(int result){
        // Prints 10
        NSLog(@"%i", x + result);
    }];
    
    
    /**
     * TestCallback_v3
     */
    Foo *foo;
    foo = [[Foo alloc] init];
    
    
    Bar *bar;
    bar = [[Bar alloc] init];

    
    [bar aMethod];
    
    // Invoke with selectores:
    SEL selectorInBar = @selector(aMethod);
    [bar performSelector:selectorInBar];
    

    // Example v4 of Callbacks
    
    [Robot sayHi:^(NSString *reply){
        NSLog(@" MAIN: %@", reply);
    }];

    
    
    // Test Delegates
    ClaseA *claseA;
    claseA = [[ClaseA alloc] init];
    
    
    ClaseB *claseB;
    claseB = [[ClaseB alloc] init];
    
    
    [claseA doSomething_claseA];
    [claseB doSomething_claseB];
    
    // testing TestDelegado_v2
    // I don´t know how to call...
    
     // SegundoViewController *svc = [[SegundoViewController alloc] init];
    
    // [svc llamarAlDelegado:<#(id)#>];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
