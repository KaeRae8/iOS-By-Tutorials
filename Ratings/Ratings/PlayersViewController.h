//
//  PlayersViewControllerTableViewController.h
//  Ratings
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"
#import "RatePlayerViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate, RatePlayerViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end
