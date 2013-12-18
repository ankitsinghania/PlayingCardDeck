//
//  PlayingCardDeck.m
//  PlayingCardDeck
//
//  Created by Ankit Singhania on 12/17/13.
//  Copyright (c) 2013 Digitans. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(id)init{
    self = [super init];
    if (self) {
        _playingCardArray = [NSMutableArray array];
        [self makeADeck];
    }
    return self;
}

-(void)makeADeck{
    //Make a deck of 52 cards. 13 per suit.
    NSArray *suitsArray = @[@"Clubs", @"Diamonds", @"Hearts", @"Spades"];
    for(NSString *suit in suitsArray){
        for (int i = 1; i <= 13; i++) {
            PlayingCard *aPlayingCard = [[PlayingCard alloc] init];
            aPlayingCard.suit = suit;
            aPlayingCard.number = [NSNumber numberWithInt:i];
            [_playingCardArray addObject:aPlayingCard];
        }
    }
}

-(void)shuffleDeck{
    NSInteger count = [self.playingCardArray count];
    for (int i = 0; i < count; i++) {
        int n = arc4random_uniform(count);
        [self.playingCardArray exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

-(PlayingCard *)dealCardAtIndexPath:(int)indexNumber{
    if (indexNumber > [self.playingCardArray count]) {
        NSLog(@"Card index more than number of cards");
        return nil;
    } else {
        PlayingCard *aPlayingCard = [_playingCardArray objectAtIndex:indexNumber];
        [_playingCardArray removeObjectAtIndex:indexNumber];
        return aPlayingCard;
    }
}

-(PlayingCard *)dealRandomCard{
    NSInteger count = [self.playingCardArray count];
    int indexNumber = arc4random_uniform(count);
    PlayingCard *aPlayingCard = [self dealCardAtIndexPath:indexNumber];
    return aPlayingCard;
}

-(PlayingCard *)dealCardFromTopOfDeck{
    PlayingCard *aPlayingCard = [self dealCardAtIndexPath:0];
    return aPlayingCard;
}


@end
