//
//  ViewController.m
//  Ratings
//
//  Created by Kenneth Shaw on 10/7/14.
//  Copyright (c) 2014 Kenneth Shaw. All rights reserved.
//

#import "GesturesViewController.h"
#import "RankingViewController.h"
#import "Player.h"

@interface GesturesViewController ()

@end

@implementation GesturesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"BestPlayers"]){
        UINavigationController *navigationController = segue.destinationViewController;
        RankingViewController *rankingViewController = [navigationController viewControllers][0];
        rankingViewController.rankedPlayers = [self playersWithRating:5];
        rankingViewController.requiredRating = 5;
        rankingViewController.title = @"Best Players";
    }else if ([segue.identifier isEqualToString:@"WorstPlayers"]){
        UINavigationController *navigationController = segue.destinationViewController;
        RankingViewController *rankingViewController = [navigationController viewControllers][0];
        rankingViewController.rankedPlayers = [self playersWithRating:1];
        rankingViewController.requiredRating = 1;
        rankingViewController.title = @"Worst Players";
    }
}

-(NSMutableArray *)playersWithRating:(int)rating{
    NSMutableArray *returnArray = [[NSMutableArray alloc] initWithCapacity:[self.players count]];
    for (Player *player in self.players) {
        if(player.rating == rating){
            [returnArray addObject:player];
        }
    }
    return returnArray;
}

@end
