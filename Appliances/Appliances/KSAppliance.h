//
//  KSAppliance.h
//  Appliances
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSAppliance : NSObject

@property (nonatomic) int voltage;
@property (nonatomic) NSString *productName;

-(instancetype)initWithProductName:(NSString *)pn;

@end
