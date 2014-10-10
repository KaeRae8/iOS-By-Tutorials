//
//  RankingViewController.h
//  Ratings
//
//  Created by Kenneth Shaw on 10/8/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RatePlayerViewController.h"

@interface RankingViewController : UITableViewController <RatePlayerViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *rankedPlayers;
@property (nonatomic, assign) int requiredRating;

-(IBAction)done:(id)sender;

@end
