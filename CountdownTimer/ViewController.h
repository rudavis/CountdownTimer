//
//  ViewController.h
//  CountdownTimer
//
//  Created by Russ Davis on 9/26/12.
//  Copyright (c) 2012 RTB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel* clockLabel;
    IBOutlet UITextField *timerLength;
    NSInteger durationInSec;
    NSInteger minRemaining;
    NSInteger secRemaining;
    NSTimer *myTicker;
}

@property (nonatomic, retain) IBOutlet UILabel *clockLabel;

- (IBAction)startTimer:(id)sender;
- (IBAction)stopTimer:(id)sender;
-(void)showActivity;

@end
