//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "Player.h"

@interface GameModel : NSObject

@property NSString *playerOne;
@property NSString *playerTwo;

@property NSInteger playerOneLife;
@property NSInteger playerTwoLife;

@property NSString* answerInString;

@property NSInteger randomLeftValue;
@property NSInteger randomRightValue;

@property NSString *currentPlayer;
@property NSString *playerName;
@property NSString* showQuestion;

@property long answer;

- (NSString *) takeTurn;
- (NSString *)generateRandomQuestion;
- (NSString *) printWinner;


@end
