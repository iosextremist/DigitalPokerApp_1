//
//  MainViewController.m
//  DigitalPokerApp_1
//
//  Created by Randy Wills on 6/10/14.
//  Copyright (c) 2014 Randy Wills. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, weak) IBOutlet UIButton *hostGameButton;
@property (nonatomic, weak) IBOutlet UIButton *joinGameButton;

@end


@implementation MainViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (IBAction)hostGameAction:(id)sender
{
}

- (IBAction)joinGameAction:(id)sender
{
}

@end
