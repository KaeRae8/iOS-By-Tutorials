//
//  main.m
//  TimeAfterTime
//
//  Created by Kenneth Shaw on 10/4/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>
#import "KSEmployee.h"
#import "KSAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            KSEmployee *kenny = [[KSEmployee alloc] init];
            kenny.weightInKilos = 90+i;
            kenny.heightInMeters = 1.8 - i/10.0;
            kenny.employeeId = i;
            
            [employees addObject:kenny];
            
            if(i == 0){
                [executives setObject:kenny forKey:@"CEO"];
            }else if (i == 1){
                [executives setObject:kenny forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            KSAsset *asset = [[KSAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            KSEmployee *employee = [employees objectAtIndex:randomIndex];
            [employee addAsset:asset];
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSString *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeId" ascending:YES];
        
        [employees sortUsingDescriptors:@[voa,eid]];
        
        NSLog(@"Employees %@", employees);
        NSLog(@"Executives %@", executives);
        NSLog(@"CEO: %@", executives[@"CEO"]);
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of all employees");
        employees = nil;
        executives = nil;
        
        /*KSEmployee *kenny = [[KSEmployee alloc] init];
        kenny.weightInKilos = 96;
        kenny.heightInMeters = 1.8;
        kenny.employeeId = 12;
        kenny.hireDate = [NSDate dateWithNaturalLanguageString:@"Jan 22, 1989"];
        
        
        float height = [kenny heightInMeters];
        int weight = [kenny weightInKilos];
        
        NSLog(@"Kenny is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"Employee %u was hired on %@", kenny.employeeId, kenny.hireDate);
        
        float bmi = [kenny bodyMassIndex];
        double years = [kenny yearsOfEmployment];
        
        NSLog(@"His BMI is %f and he has worked with us for %.2f years", bmi, years);*/
    }
    return 0;
}
