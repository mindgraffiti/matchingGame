//
//  MatchingGame.h
//  MatchMemoryGame
//
//  Created by Thuy Copeland on 4/17/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatchingGame : NSObject


@property (assign, nonatomic) NSInteger *maxChoices;
@property (nonatomic) BOOL isMatch;
@property (assign, nonatomic) NSInteger totalMisses;
@property (assign, nonatomic) NSInteger totalMatches;
@property (nonatomic) NSTimeInterval duration;

- (void) startGame;
- (void) pauseGame;
- (void) resetGame;

@end
