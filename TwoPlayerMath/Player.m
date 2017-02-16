//
//  Player.m
//  TwoPlayerMath
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "Player.h"
#import "GameModel.h"

@interface Player()

@property (nonatomic) NSString *playerAnswer;

@end

@implementation Player


- (instancetype)initWithName:(NSString *)playerName {
    if (self = [super init]) {
        _playerName = playerName;
    }
    return self;
}
@end
