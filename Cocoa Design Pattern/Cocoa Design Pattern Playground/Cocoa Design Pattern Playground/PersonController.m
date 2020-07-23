//
//  PersonController.m
//  Cocoa Design Pattern Playground
//
//  Created by Enzo Jimenez-Soto on 7/23/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "PersonController.h"
#import "Person.h"

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
        
        [NSTimer scheduledTimerWithTimeInterval:5
                                         target:self
                                       selector:@selector(recordNewBirth:)
                                       userInfo:nil
                                        repeats:YES];
    }
    return self;
}

- (void) recordNewBirth:(id)sender
{
   // if ([self.delegate conformsToProtocol:@protocol(PersonControllerDelegate)]) { // This method sucks
    
    if ([self.delegate respondsToSelector:@selector(personController:didObserveNewBirth:)]) {
        
        Person *person = [[Person alloc] init];
        
    [self.delegate personController:self didObserveNewBirth:@"New Child"];
    
    }
}

@end
