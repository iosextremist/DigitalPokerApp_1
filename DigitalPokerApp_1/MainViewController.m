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
{
	BOOL _buttonsEnabled;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
    
    [self prepareForIntroAnimation];
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
    
    [self performIntroAnimation];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (IBAction)hostGameAction:(id)sender
{
    {
        if (_buttonsEnabled)
        {
//            [self performExitAnimationWithCompletionBlock:^(BOOL finished)
             {
                 HostViewController *controller = [[HostViewController alloc] initWithNibName:@"HostViewController" bundle:nil];
                 controller.delegate = self;
                 
                 [self presentViewController:controller animated:NO completion:nil];
             };
        }
    }
}

- (IBAction)joinGameAction:(id)sender
{
}


- (void)prepareForIntroAnimation
{
    self.hostGameButton.alpha = 0.0f;
	self.joinGameButton.alpha = 0.0f;
    
	_buttonsEnabled = NO;
}

- (void)performIntroAnimation
{
//	CGPoint point = CGPointMake(self.view.bounds.size.width / 2.0f, self.view.bounds.size.height * 2.0f);
    
	[UIView animateWithDuration:0.65f
                          delay:0.5f
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^
     {
     }
                     completion:nil];
    
    [UIView animateWithDuration:0.5f
                          delay:1.0f
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^
     {
         self.hostGameButton.alpha = 1.0f;
         self.joinGameButton.alpha = 1.0f;
     }
                     completion:^(BOOL finished)
     {
         _buttonsEnabled = YES;
     }];
    
}


// Add the implementation of the delegate method to MainViewController.m
#pragma mark - HostViewControllerDelegate

- (void)hostViewControllerDidCancel:(HostViewController *)controller
{
	[self dismissViewControllerAnimated:NO completion:nil];
}



@end
