//
//  ViewController.m
//  Cocoa Design Pattern Playground
//
//  Created by Enzo Jimenez-Soto on 7/23/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "ViewController.h"
#import "PersonController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    PersonController *sharedInstanceA = PersonController.sharedPersonController;
    NSLog(@"Person Controller: %@", sharedInstanceA);
}


@end
