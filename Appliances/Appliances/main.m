//
//  main.m
//  Appliances
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KSAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        KSAppliance *app = [[KSAppliance alloc] init];
        NSLog(@"app is %@", app);
        
        app.productName = @"Washing Machine";
        app.voltage = 150;
        
        NSLog(@"app is %@", app);
    }
    return 0;
}
