//
//  KSPerson.h
//  TimeAfterTime
//
//  Created by Kenneth Shaw on 10/5/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSPerson : NSObject
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

-(float)bodyMassIndex;

@end
