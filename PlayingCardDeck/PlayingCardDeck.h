//
//  PlayingCardDeck.h
//  PlayingCardDeck
//
//  Created by Ankit Singhania on 12/17/13.
//  Copyright (c) 2013 Digitans. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PlayingCard;

@interface PlayingCardDeck : NSObject

@property (nonatomic, strong) NSMutableArray *playingCardArray;

-(void)shuffleDeck;
-(PlayingCard *)dealRandomCard;
-(PlayingCard *)dealCardFromTopOfDeck;

@end
