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
    NSInteger countDown;
    NSTimer *myTicker;
}

@property (nonatomic, retain) NSTimer *myTicker;

- (IBAction)startTimer:(id)sender;
- (IBAction)stopTimer:(id)sender;
-(void)showActivity;

@end
