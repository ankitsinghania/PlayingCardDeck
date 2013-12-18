//
//  TestViewController.m
//  PlayingCardDeck
//
//  Created by Ankit Singhania on 12/17/13.
//  Copyright (c) 2013 Digitans. All rights reserved.
//

#import "TestViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface TestViewController ()

@property (nonatomic, strong) PlayingCardDeck *aPlayingCardDeck;

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"PlayingCardTest"];
    _aPlayingCardDeck = [[PlayingCardDeck alloc] init];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shufflePressed:(id)sender {
    [_aPlayingCardDeck shuffleDeck];
}

- (IBAction)pickCardPressed:(id)sender {
    PlayingCard *aPlayingCard = [_aPlayingCardDeck dealRandomCard];
    NSString *displayString = [aPlayingCard returnCardName];
    NSLog(@"%@", displayString);
    NSLog(@"%lu", (unsigned long)[_aPlayingCardDeck.playingCardArray count]);
}
- (IBAction)displayDeckPressed:(id)sender {
    
    for(PlayingCard *aPlayingCard in _aPlayingCardDeck.playingCardArray){
        NSLog(@"%@::%@", aPlayingCard.number, aPlayingCard.suit);
    }
    NSLog(@"----------------------------------");
}
- (IBAction)dealCardFromTopPressed:(id)sender {
    PlayingCard *aPlayingCard = [_aPlayingCardDeck dealCardFromTopOfDeck];
    NSString *displayString = [aPlayingCard returnCardName];
    NSLog(@"%@", displayString);
    NSLog(@"Count in deck :%lu", (unsigned long)[_aPlayingCardDeck.playingCardArray count]);
}

@end
