//
//  PersonController.m
//  Cocoa Design Pattern Playground
//
//  Created by Enzo Jimenez-Soto on 7/23/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "PersonController.h"

@implementation PersonController


+ (instancetype)sharedPersonController
{
    static PersonController *personController = nil;
    
    if (!personController) {
        personController = [[self alloc] init];
    }
    return personController;
}

@end
