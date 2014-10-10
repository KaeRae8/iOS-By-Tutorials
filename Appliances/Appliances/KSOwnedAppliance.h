//
//  KSOwnedAppliance.h
//  Appliances
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KSAppliance.h"

@interface KSOwnedAppliance : KSAppliance

@property (readonly) NSSet *ownerNames;

-(instancetype)initWithProductName:(NSString *)pn
                    firstOnwerName:(NSString *)n;

-(void)addOwnerName:(NSString *)name;
-(void)removeOwnerName:(NSString *)name;

@end
