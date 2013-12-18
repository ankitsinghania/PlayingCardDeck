//
//  PlayingCard.m
//  PlayingCardDeck
//
//  Created by Ankit Singhania on 12/17/13.
//  Copyright (c) 2013 Digitans. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)returnSuit{
    return self.suit;
}

-(NSNumber *)returnNumber{
    return self.number;
}

-(NSString *)returnCardName{
    NSString *name = nil;
    
    if ([self.number integerValue] == 13) {
        return [NSString stringWithFormat:@"King of %@",self.suit];
    } else if ([self.number integerValue] == 12) {
        return [NSString stringWithFormat:@"Queen of %@",self.suit];
    } else if ([self.number integerValue] == 11) {
        return [NSString stringWithFormat:@"Jack of %@",self.suit];
    } else if ([self.number integerValue] == 1) {
        return [NSString stringWithFormat:@"Ace of %@",self.suit];
    } else {
        return [NSString stringWithFormat:@"%@ of %@",[self.number stringValue], self.suit];
    }
    
    return name;
}

@end
