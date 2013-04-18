//
//  TCPlayingCard.m
//  MatchMemoryGame
//
//  Created by Thuy Copeland on 4/17/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "TCPlayingCard.h"

@implementation TCPlayingCard

- (void) makeCard{
    cardArray = [NSMutableArray arrayWithObjects:nil];
    NSString *cardNumber;
    for (int i = 0; i<= 6; i++)
    {
        if(i==0)
        {
            continue;
        }
        else{
            cardNumber = [NSString stringWithFormat:@"%d",i];
            [cardArray addObject:cardNumber];
        }
    }

}

@end
