//
//  KSEmployee.h
//  TimeAfterTime
//
//  Created by Kenneth Shaw on 10/5/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KSPerson.h"
@class KSAsset;

@interface KSEmployee : KSPerson

@property (nonatomic) unsigned int employeeId;
@property (nonatomic) unsigned int accessCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

-(double)yearsOfEmployment;
-(void)addAsset:(KSAsset *)a;
-(unsigned int)valueOfAssets;

@end
