//
//  HostViewController.m
//  DigitalPokerApp_1
//
//  Created by Randy Wills on 6/10/14.
//  Copyright (c) 2014 Randy Wills. All rights reserved.
//

#import "HostViewController.h"

@interface HostViewController ()
@property (nonatomic, weak) IBOutlet UILabel *headingLabel;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UILabel *statusLabel;
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, weak) IBOutlet UIButton *startButton;
@end

@implementation HostViewController

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
    // Do any additional setup after loading the view from its nib.
    
    // This is to dismiss the keyboard by touching anywhere on the screen except on the keyboard
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self.nameTextField action:@selector(resignFirstResponder)];
	gestureRecognizer.cancelsTouchesInView = NO;
	[self.view addGestureRecognizer:gestureRecognizer];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (IBAction)startAction:(id)sender
{
}

- (IBAction)exitAction:(id)sender
{
    [self.delegate hostViewControllerDidCancel:self];
}
// We’ve declared a delegate protocol for the HostViewController. When the exit button is tapped, the HostViewController tells its delegate that the Host Game screen has been cancelled. The delegate is then responsible for closing the screen. In this case, the role of the delegate is played by the MainViewController.


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return nil;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return NO;
}

@end
