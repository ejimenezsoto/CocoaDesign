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
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        personController = [[self alloc] initSharedInstance];
    });
    
    if (!personController) {
        personController = [[self alloc] init];
    }
    return personController;
}

- (instancetype)initSharedInstance
{
    if (self = [super init]) {
        // configure the shared instance any way you like
    }
    return self;
    
}

@end
