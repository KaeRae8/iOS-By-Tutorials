//
//  RatePlayerViewController.h
//  Ratings
//
//  Created by Kenneth Shaw on 10/8/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RatePlayerViewController;
@class Player;

@protocol RatePlayerViewControllerDelegate <NSObject>

-(void)ratePlayerViewController:(RatePlayerViewController *)controller didPickRatingForPlayer:(Player *)player;

@end

@interface RatePlayerViewController : UIViewController

@property (nonatomic, weak) id<RatePlayerViewControllerDelegate> delegate;
@property (nonatomic, strong) Player *player;

- (IBAction)rateAction:(UIButton *) sender;

@end
