//
//  DetailViewController.h
//  Ratings
//
//  Created by Kenneth Shaw on 10/8/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate, UIToolbarDelegate, UIPopoverControllerDelegate>

@property (nonatomic, weak) IBOutlet UIToolbar *toolbar;

@end
