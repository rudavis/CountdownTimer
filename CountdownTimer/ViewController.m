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

@synthesize myTicker;

- (IBAction)startTimer:(id)sender {
    countDown = [timerLength.text integerValue];
    
    myTicker = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                                target: self
                                              selector: @selector(showActivity)
                                              userInfo: nil
                                               repeats: YES];
}

- (IBAction)stopTimer:(id)sender {
    [self.myTicker invalidate];
    self.myTicker = nil;
    
}

-(void)showActivity{
    //NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //NSDate *date = [NSDate date];
    
    //[formatter setTimeStyle:NSDateFormatterMediumStyle];
    //[clockLabel setText:[formatter stringFromDate:date]];
    NSString *counted = [NSString stringWithFormat:@"%d",countDown];
    clockLabel.text = counted;
    countDown--;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
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
