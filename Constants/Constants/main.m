//
//  main.m
//  Constants
//
//  Created by Kenneth Shaw on 10/5/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:
                       @"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        
        
        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:0
                                   error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"Success!");
        
    }
    return 0;
}
