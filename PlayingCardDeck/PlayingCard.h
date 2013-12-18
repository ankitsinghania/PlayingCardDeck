//
//  PlayingCard.h
//  PlayingCardDeck
//
//  Created by Ankit Singhania on 12/17/13.
//  Copyright (c) 2013 Digitans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayingCard : NSObject

@property (nonatomic, strong) NSString *suit;
@property (nonatomic, strong) NSNumber *number;

-(NSString *)returnCardName;
-(NSNumber *)returnNumber;
-(NSString *)returnSuit;

@end
