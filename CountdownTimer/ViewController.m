//
//  ViewController.m
//  CountdownTimer
//
//  Created by Russ Davis on 9/26/12.
//  Copyright (c) 2012 RTB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize clockLabel;


- (IBAction)startTimer:(id)sender {
    durationInSec = [timerLength.text integerValue] * 60;
    
    //countDown = [timerLength.text integerValue];
    
    myTicker = [NSTimer scheduledTimerWithTimeInterval: 0.1
                                                target: self
                                              selector: @selector(showActivity)
                                              userInfo: nil
                                               repeats: YES];
}

- (IBAction)stopTimer:(id)sender {
    [myTicker invalidate];
    myTicker = nil;
    [self showActivity];
    
}

-(void)showActivity{
    //NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //NSDate *date = [NSDate date];
    //[formatter setTimeStyle:NSDateFormatterMediumStyle];
    //[clockLabel setText:[formatter stringFromDate:date]];
    
    /*
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[countDown doubleValue];
                    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
                    [formatter setDateFormat:@"HH:mm:ss"];
                    NSLog(@"%@", [formatter stringFromDate:date]);
                    [formatter release];
    */
     
    
    //NSString *counted = [NSString stringWithFormat:@"%d",countDown];
    
    minRemaining = durationInSec / 60;
    secRemaining = durationInSec % 60;
    
    clockLabel.text = [NSString stringWithFormat:@"%02d:%02d",minRemaining, secRemaining];
    if (durationInSec>0) {
        durationInSec--;
    } else {
        [myTicker invalidate];
        myTicker = nil;
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    secRemaining = 0;
    minRemaining = 0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Override to allow orientations other than
// the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}


@end
