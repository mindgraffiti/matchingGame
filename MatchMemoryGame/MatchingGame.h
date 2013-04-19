//
//  MatchingGame.h
//  MatchMemoryGame
//
//  Created by Thuy Copeland on 4/17/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatchingGame : NSObject

@property (strong, nonatomic) NSMutableArray *cardArray;
@property (assign, nonatomic) NSInteger tries;
@property (assign, nonatomic) NSInteger maxTries;
@property (nonatomic) NSTimeInterval duration;

- (void) startGame;
//- (void) pauseGame;
//- (void) resetGame;
- (void) makeMatch;
- (void) winGame;
- (BOOL) playerChoice: (int) isMatch;

@end
