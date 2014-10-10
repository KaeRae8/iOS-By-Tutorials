//
//  PlayerCellTableViewCell.h
//  Ratings
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;

@end
