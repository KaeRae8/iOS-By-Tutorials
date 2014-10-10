//
//  KSLogger.m
//  Callbacks
//
//  Created by Kenneth Shaw on 10/6/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "KSLogger.h"

@implementation KSLogger

- (void)connection:(NSURLConnection *)connection
     didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // Uncomment the next line to see the entire fetched file
    // NSLog(@"The whole string is %@", string);
    
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

-(NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        NSLog(@"Created Date Forrmatter");
    }
    return  [dateFormatter stringFromDate:self.lastTime];
}

-(void)updateLastTimer:(NSTimer *)t{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"I just set the time to %@", self.lastTimeString);
}

@end
