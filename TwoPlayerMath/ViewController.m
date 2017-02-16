//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, strong) GameModel *gameModel;
// automatically creates _gameModel, getter and setter.
// initializer use _gameModel.

@end

@implementation ViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.gameModel = [[GameModel alloc] init];

    self.showUserInput.text = [[NSMutableString alloc] init];
    self.playerOneCurrentScore.text = [NSString stringWithFormat:@"%ld",(long)self.gameModel.playerOneLife];
    self.playerTwoCurrentScore.text = [NSString stringWithFormat:@"%ld",(long)self.gameModel.playerTwoLife];

    self.playerTurn.text = [self.gameModel takeTurn];
    self.showQuestion.text = [self.gameModel generateRandomQuestion];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterPressed:(id)sender {
    
    if([self.showUserInput.text isEqualToString:[self.gameModel answerInString]]) {
        _userAnswer.text = @"Correct!";
        
        _showQuestion.text = [self.gameModel generateRandomQuestion];
    }
    
    else {
        
        _userAnswer.text = @"Incorrect!";
        
        if(self.gameModel.currentPlayer == self.gameModel.playerOne) {
            self.gameModel.playerOneLife = self.gameModel.playerOneLife-1;
            self.playerOneCurrentScore.text = [NSString stringWithFormat:@"%ld",(long)self.gameModel.playerOneLife];
        }
        else if(self.gameModel.currentPlayer == self.gameModel.playerTwo) {
            self.gameModel.playerTwoLife = self.gameModel.playerTwoLife-1;

            self.playerTwoCurrentScore.text = [NSString stringWithFormat:@"%ld",(long)self.gameModel.playerTwoLife];
        }
    }
        self.showQuestion.text = [self.gameModel generateRandomQuestion];
        self.playerTurn.text = [self.gameModel takeTurn];
    
        [self.gameModel printWinner];
    if((self.gameModel.playerOneLife == 0) || (self.gameModel.playerTwoLife == 0)) {
        
        if(self.gameModel.playerTwoLife == 0) {
            _userAnswer.text = @"Player 1 Won";
            
        }
        else if(self.gameModel.playerOneLife == 0) {
            _userAnswer.text = @"Player 2 Won";
        }
        else {
            _userAnswer.text = @" ";
        }
    }
    _showUserInput.text = @"";

}

- (IBAction)zeroButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@0", _showUserInput.text];
}

- (IBAction)oneButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@1", _showUserInput.text];
}

- (IBAction)twoButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@2", _showUserInput.text];
}

- (IBAction)threeButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@3", _showUserInput.text];
}
- (IBAction)fourButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@4", _showUserInput.text];
}

- (IBAction)fiveButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@5", _showUserInput.text];
}
- (IBAction)sixButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@6", _showUserInput.text];
}
- (IBAction)sevenButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@7", _showUserInput.text];
}

- (IBAction)eightButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@8", _showUserInput.text];
}

- (IBAction)nineButtonPressed:(id)sender {
    _showUserInput.text = [NSString stringWithFormat:@"%@9", _showUserInput.text];
}

- (IBAction)deletePressed:(id)sender {
    NSString * str = _showUserInput.text;
    if ( [str length] > 0 )
        str = [str substringToIndex:[str length] - 1];
    _showUserInput.text = str;
}
@end
