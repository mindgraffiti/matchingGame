//
//  TCViewController.m
//  MatchMemoryGame
//
//  Created by Thuy Copeland on 4/17/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "TCViewController.h"
#import "MatchingGame.h"
#import "TCPlayingCard.h"

@interface TCViewController ()

@property (strong, nonatomic) NSArray *scores;
@property (nonatomic) MatchingGame *game;
@property (nonatomic) TCPlayingCard *card;

@end

@implementation TCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.game = [[MatchingGame alloc] init];
    self.card = [[TCPlayingCard alloc] init];
    // setup to make user scores persist
    self.scores = [[NSUserDefaults standardUserDefaults] arrayForKey:@"scores"];
    
    // can this be put into its own method?
    NSDate *today = [[NSDate alloc] init];
    self.dateFormatter = [[NSDateFormatter alloc] init];
    [self.dateFormatter setDateFormat:@"HH : mm : ss.S"];
    
    NSString *currentTime = [self.dateFormatter stringFromDate: today];
    self.timerLabel.text = currentTime;
    
    self.startTimer = [NSTimer scheduledTimerWithTimeInterval:self.game.duration target:self selector:@selector(startTime) userInfo:nil repeats:YES];
    
    // call the function to make the cards
    [self.card makeCard];
}

- (void) startTime
{
    NSDate *today = [[NSDate alloc] init];
    NSString *currentTime = [self.dateFormatter stringFromDate: today];
    self.timerLabel.text = currentTime;
}

// return the card numbers to the cardButtons
- (void) setCardTitles
{
    for (int i = 0; i<12; i++)
    {
        // set the card number to the title or tag
        [self.cards setTitle: @"ABC" forState:UIControlStateSelected];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
