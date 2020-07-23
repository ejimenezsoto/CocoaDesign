//
//  Person.m
//  Cocoa Design Pattern Playground
//
//  Created by Enzo Jimenez-Soto on 7/23/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    return [self initWithName:@"Bob" birthDate:NSDate.now hairColor:PersonHairColorBlond];
}

-(instancetype)initWithName:(NSString *)aName birthDate:(NSDate *)aBirthDate hairColor:(PersonHairColor)aHairColor
{
    if (self = [super init]) {
        _fullName = aName.copy;
        _birthDate = aBirthDate;
        _hairColor = aHairColor;
    }
    return self;
}


- (NSString *)generateRandomName
{
    static NSArray *firstNames = nil;
    static NSArray *lastNames = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        firstNames = @[@"Dimitri", @"Skyler", @"Chris", @"Joshua"];
        lastNames = @[@"Sharp", @"Gonzales", @"Suzuki", @"Buniol"];
    });
    
    NSUInteger randomIndex = arc4random_uniform((uint32_t)firstNames.count);
    NSString *randomFirstName = [firstNames objectAtIndex:randomIndex];
    
    NSString *randomLastName = [lastNames objectAtIndex:arc4random_uniform((uint32_t)lastNames.count)];
    
    
    return [NSString  stringWithFormat:@"%@ %@", randomFirstName, randomLastName];
}
@end
