//
//  KSEmployee.m
//  TimeAfterTime
//
//  Created by Kenneth Shaw on 10/5/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "KSEmployee.h"
#import "KSAsset.h"

@interface KSEmployee()
{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation KSEmployee

- (double)yearsOfEmployment
{
    // Do I have a non-nil hireDate?
    if (self.hireDate) {
        // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;  // Seconds per year
    } else {
        return 0;
    }
}

- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(KSAsset *)a
{
    // Is assets nil?
    if (!_assets) {
        
        // Create the array
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (KSAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(float)bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets.", self.employeeId, self.valueOfAssets];
}

-(void)dealloc{
    NSLog(@"Deallocating %@", self);
}

@end
