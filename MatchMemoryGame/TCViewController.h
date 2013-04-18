//
//  TCViewController.h
//  MatchMemoryGame
//
//  Created by Thuy Copeland on 4/17/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TCViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection (UIButton) NSArray *cards;
@property (strong, nonatomic) IBOutlet UILabel *messageLabel;
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;
@property (strong, nonatomic) NSTimer *startTimer;
@property (strong, nonatomic) NSDateFormatter *dateFormatter;

@end
