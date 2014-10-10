//
//  KSOwnedAppliance.m
//  Appliances
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "KSOwnedAppliance.h"

@interface KSOwnedAppliance()
{
    NSMutableSet *_ownerNames;
}

@end

@implementation KSOwnedAppliance

-(instancetype)initWithProductName:(NSString *)pn{
    return [self initWithProductName:pn firstOnwerName:nil];
}

-(instancetype)initWithProductName:(NSString *)pn firstOnwerName:(NSString *)n{
    self = [super init];
    
    if(self){
        _ownerNames = [[NSMutableSet alloc] init];
        
        if(n){
            [_ownerNames addObject:n];
        }
    }
    return self;
}

-(void)addOwnerName:(NSString *)name{
    [_ownerNames addObject:name];
}

-(void)removeOwnerName:(NSString *)name{
    [_ownerNames removeObject:name];
}

-(NSSet *)ownerNames{
    return [_ownerNames copy];
}

@end
