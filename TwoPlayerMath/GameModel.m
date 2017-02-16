//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"
#import "ViewController.h"


// automatically creates _gameModel, getter and setter.
// initializer use _gameModel.



@implementation GameModel 

- (instancetype)init {
    if (self = [super init]) {

        _playerOneLife = 3;
        _playerTwoLife = 3;
    
        _playerOne = @"Player 1";
        _playerTwo = @"Player 2";
        
    }
    return self;
}

-(NSString *)generateRandomQuestion {

    _randomLeftValue = arc4random_uniform(20) + 1;
    _randomRightValue = arc4random_uniform(20) + 1;

    
    _answer = _randomLeftValue + _randomRightValue;
    
    self.answerInString = [NSString stringWithFormat:@"%ld", _answer];
    self.showQuestion = [NSString stringWithFormat:@"%ld + %ld?", (long)_randomLeftValue, (long)_randomRightValue];
    
    return self.showQuestion;
}

- (NSString *)takeTurn {
    
    if (_currentPlayer == nil) {
        
        _currentPlayer = _playerOne;
        return _playerOne;
    
    }
    else if (_currentPlayer == _playerOne) {
        _currentPlayer = _playerTwo;
        return _playerTwo;
    }
    else if (_currentPlayer == _playerTwo) {
        _currentPlayer = _playerOne;
        return _playerOne;
    }
    else {
        return nil;
    }
}

- (BOOL) checkAnswer:(NSString *) userInput {
    
    if([userInput isEqualToString:self.answerInString]) {
        return true;
    }
    else {
        

        
        //_currentPlayer.countPlayerLife -= 1;
        return false;
        
    }
}

- (NSString *) printWinner {
    //if(self.playerTwo.countPlayerLife == 0) {
    if(_playerTwoLife == 0) {
        return @"Player 1 Won";

    }
    else if(_playerOneLife == 0) {
        return @"Player 2 Won";
    }
    else {
        return @" ";
    }
        
}
@end

