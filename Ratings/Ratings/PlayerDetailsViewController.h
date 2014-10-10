//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"

@class PlayerDetailsViewController;
@class Player;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didEditPlayer:(Player *)player;
@end

@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (nonatomic, weak) id<PlayerDetailsViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (nonatomic, strong) Player *playerToEdit;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
