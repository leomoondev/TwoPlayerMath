//
//  ViewController.h
//  TwoPlayerMath
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *playerOneCurrentScore;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoCurrentScore;

@property (strong, nonatomic) IBOutlet UILabel *playerTurn;
@property (strong, nonatomic) IBOutlet UILabel *showQuestion;
@property (weak, nonatomic) IBOutlet UILabel *showUserInput;
@property (strong, nonatomic) IBOutlet UILabel *userAnswer;

- (IBAction)enterPressed:(id)sender;
- (IBAction)zeroButtonPressed:(id)sender;
- (IBAction)oneButtonPressed:(id)sender;
- (IBAction)twoButtonPressed:(id)sender;
- (IBAction)threeButtonPressed:(id)sender;
- (IBAction)fourButtonPressed:(id)sender;
- (IBAction)fiveButtonPressed:(id)sender;
- (IBAction)sixButtonPressed:(id)sender;
- (IBAction)sevenButtonPressed:(id)sender;
- (IBAction)eightButtonPressed:(id)sender;
- (IBAction)nineButtonPressed:(id)sender;


- (IBAction)deletePressed:(id)sender;


@end

