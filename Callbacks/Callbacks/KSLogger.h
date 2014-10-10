//
//  KSLogger.h
//  Callbacks
//
//  Created by Kenneth Shaw on 10/6/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

-(void)updateLastTimer:(NSTimer *)t;
-(NSString *)lastTimeString;

@end
