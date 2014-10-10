//
//  KSAsset.m
//  TimeAfterTime
//
//  Created by Kenneth Shaw on 10/5/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "KSAsset.h"
#import "KSEmployee.h"

@implementation KSAsset

-(void)dealloc{
    NSLog(@"Deallocating %@", self);
}

-(NSString *)description{
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                self.label, self.resaleValue];
    }
}

@end
