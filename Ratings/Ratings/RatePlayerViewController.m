//
//  RatePlayerViewController.m
//  Ratings
//
//  Created by Kenneth Shaw on 10/8/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "RatePlayerViewController.h"
#import "Player.h"

@interface RatePlayerViewController ()

@end

@implementation RatePlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.player.name;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rateAction:(UIButton *)sender{
    self.player.rating = sender.tag;
    [self.delegate ratePlayerViewController:self didPickRatingForPlayer:self.player];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
