//
//  MatchingGame.m
//  MatchMemoryGame
//
//  Created by Thuy Copeland on 4/17/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "MatchingGame.h"

@implementation MatchingGame

- (id) init
{
    self = [super init];
    if(self)
    {
        self.maxTries = 2;
    }
    return self;
}

// return the card numbers to the cardButtons
- (void) setCardTitles
{
    self.cardArray = [[NSMutableArray alloc] initWithCapacity:12];
    for (int i=0; i<12; i++) {
        [self.cardArray addObject:[NSNumber numberWithInt:i%6+1]];
    }
}
- (void) startGame
{
    // call the function to make the cards
    [self setCardTitles];

}
- (BOOL) playerChoice:(int) isMatch
{
    if(cards == isMatch && self.tries <= self.maxTries)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (void) win
{
    
}

@end
