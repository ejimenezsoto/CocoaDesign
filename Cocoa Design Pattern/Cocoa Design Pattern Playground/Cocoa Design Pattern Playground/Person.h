//
//  Person.h
//  Cocoa Design Pattern Playground
//
//  Created by Enzo Jimenez-Soto on 7/23/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger,PersonHairColor) {
    PersonHairColorBrown = 0,
    PersonHairColorBlond = 1,
    PersonHairColorOrange = 2,
    PersonHairColorBlue = 3,
    PersonHairColorRed = 4,
};

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *fullName;
@property (nonatomic) NSDate *birthDate;
@property (nonatomic) PersonHairColor hairColor;


- (instancetype)initWithName:(NSString *)aName birthDate:(NSDate *)aBirthDate hairColor:(PersonHairColor)aHairColor NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
