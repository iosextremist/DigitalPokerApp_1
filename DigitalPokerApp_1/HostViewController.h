//
//  HostViewController.h
//  DigitalPokerApp_1
//
//  Created by Randy Wills on 6/10/14.
//  Copyright (c) 2014 Randy Wills. All rights reserved.
//

#import <UIKit/UIKit.h>


@class HostViewController;

@protocol HostViewControllerDelegate <NSObject>

- (void)hostViewControllerDidCancel:(HostViewController *)controller;

@end


@interface HostViewController : UIViewController
@property (nonatomic, weak) id <HostViewControllerDelegate> delegate;
@end
