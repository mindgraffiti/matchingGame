//
//  TCViewController.m
//  MatchMemoryGame
//
//  Created by Thuy Copeland on 4/17/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "TCViewController.h"
#import "MatchingGame.h"

@interface TCViewController ()
@property (strong, nonatomic) NSArray *scores;
@property (nonatomic) MatchingGame *game;

@end

@implementation TCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.game = [[MatchingGame alloc] init];

    // setup to make user scores persist
    self.scores = [[NSUserDefaults standardUserDefaults] arrayForKey:@"scores"];
    
    // can this be put into its own method?
    NSDate *today = [[NSDate alloc] init];
    self.dateFormatter = [[NSDateFormatter alloc] init];
    [self.dateFormatter setDateFormat:@"HH : mm : ss.S"];
    
    NSString *currentTime = [self.dateFormatter stringFromDate: today];
    self.timerLabel.text = currentTime;
    
    self.startTimer = [NSTimer scheduledTimerWithTimeInterval:self.game.duration target:self selector:@selector(startTime) userInfo:nil repeats:YES];
    
    // disable buttons until start game is pressed
    [self hideButtons];
}

- (void) startTime
{
    NSDate *today = [[NSDate alloc] init];
    NSString *currentTime = [self.dateFormatter stringFromDate: today];
    self.timerLabel.text = currentTime;
}

- (void) hideButtons
{
    [self.cards setValue: [NSNumber numberWithBool:YES] forKey:@"hidden"];
}

- (void) showButtons
{
    [self.cards setValue: [NSNumber numberWithBool:NO] forKey:@"hidden"];
}

- (IBAction)startButtonPressed:(id)sender
{
    [self showButtons];
    [self.startButton setHidden:YES];
    [self.game startGame];
}
- (IBAction)cardPressed:(id)sender
{
    int index = [self.cards indexOfObject:sender];
    NSNumber *number = [self.game.cardArray objectAtIndex:index];
    // this is a method that acts like a property: number.stringValue [NSString stringWithFormat]
    [sender setTitle:number.stringValue forState:UIControlStateNormal];
    self.game.tries++;
    int choice = [[sender currentTitle] integerValue];
    if([self.game playerChoice:choice])
    {
        //[self saveScore];
        //NSLog(@"Score saved");
        NSLog(@"You made a match!");
        [sender setEnabled:NO];
    }
    else if(self.game.tries < self.game.maxTries)
    {
        [sender setHidden: NO];
    }
    else
    {
        [sender setHidden: YES];
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
