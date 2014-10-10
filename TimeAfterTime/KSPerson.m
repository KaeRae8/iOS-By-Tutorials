//
//  KSPerson.m
//  TimeAfterTime
//
//  Created by Kenneth Shaw on 10/5/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "KSPerson.h"

@implementation KSPerson

-(float)bodyMassIndex{
    float h = [self heightInMeters];
    return [self weightInKilos]/(h*h);
}



@end
