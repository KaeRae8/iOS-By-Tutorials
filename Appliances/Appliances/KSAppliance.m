//
//  KSAppliance.m
//  Appliances
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "KSAppliance.h"

@implementation KSAppliance

- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

-(instancetype)initWithProductName:(NSString *)pn{
    self = [super init];
    
    if(self){
        _productName = [pn copy];
        _voltage = 120;
    }
    
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
