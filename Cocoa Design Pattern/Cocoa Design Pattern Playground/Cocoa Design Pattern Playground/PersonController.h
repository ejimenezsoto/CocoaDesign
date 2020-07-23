//
//  PersonController.h
//  Cocoa Design Pattern Playground
//
//  Created by Enzo Jimenez-Soto on 7/23/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol  PersonControllerDelegate;

@interface PersonController : NSObject

// static let shared = PersonController()
+ (instancetype)sharedPersonController;
//@property (nonatomic, class, readonly) PersonController *sharedPersonController;

@property (nonatomic, weak) id<PersonControllerDelegate> delegate;

@end



@protocol PersonControllerDelegate <NSObject>

@required // implicit

@optional

- (void)personController:(PersonController *)PersonController didObserveNewBirth:(id)person;

@end

NS_ASSUME_NONNULL_END
