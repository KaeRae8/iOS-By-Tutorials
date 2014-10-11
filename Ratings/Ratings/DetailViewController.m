//
//  DetailViewController.m
//  Ratings
//
//  Created by Kenneth Shaw on 10/8/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
{
    UIPopoverController *_masterPopoverController;
    UIPopoverController *_menuPopoverController;
}

// Needed for iOS 5 only
- (BOOL)shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation)interfaceOrientation{
    return YES;
}
- (void)viewDidLoad{
    [super viewDidLoad];
    self.toolbar.delegate = self;
}
- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar{
    return UIBarPositionTopAttached;
}

#pragma mark - UISplitViewControllerDelegate
- (void)splitViewController: (UISplitViewController *)splitViewController
     willHideViewController:(UIViewController *)viewController
          withBarButtonItem:(UIBarButtonItem *)barButtonItem
       forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = @"Master";
    NSMutableArray *items = [[self.toolbar items] mutableCopy];
    [items insertObject:barButtonItem atIndex:0];
    [self.toolbar setItems:items animated:YES];
    _masterPopoverController = popoverController;
}
- (void)splitViewController:(UISplitViewController *)splitController
     willShowViewController:(UIViewController *)viewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    NSMutableArray *items = [[self.toolbar items] mutableCopy];
    [items removeObject:barButtonItem];
    [self.toolbar setItems:items animated:YES];
    _masterPopoverController = nil;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"ShowPopover"]){
        if (_menuPopoverController != nil &&
            _menuPopoverController.popoverVisible) {
            [_menuPopoverController dismissPopoverAnimated:NO];
        }
        _menuPopoverController = ((UIStoryboardPopoverSegue *) segue).popoverController;
        _menuPopoverController.delegate = self;
    }
}

-(void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController{
    _menuPopoverController.delegate = nil;
    _menuPopoverController = nil;
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    if(_menuPopoverController != nil && _menuPopoverController.popoverVisible){
        [_menuPopoverController dismissPopoverAnimated:YES];
        _menuPopoverController = nil;
    }
}

@end
