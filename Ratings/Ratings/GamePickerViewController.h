//
//  GamePickerViewController.h
//  Ratings
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>

- (void)gamePickerViewController:(GamePickerViewController *)controller
                   didSelectGame:(NSString *)game;
@end

@interface GamePickerViewController : UITableViewController

@property (nonatomic, weak) id<GamePickerViewControllerDelegate> delegate;
@property (nonatomic, copy) NSString *game;

@end
