//
//  ViewController.m
//  DateCalc
//
//  Created by Michael Crump on 8/3/13.
//  Copyright (c) 2013 Michael Crump. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ((DateChooserViewController *)segue.destinationViewController).delegate=self;
}

-(void)calculateDateDifference:(NSDate *)chosenDate{
    NSDate *todaysDate;
    NSString *differenceOutput;
    NSString *todaysDateString;
    NSString *chosenDateString;
    NSDateFormatter *dateFormat;
    NSTimeInterval difference;
    
    todaysDate = [NSDate date];
    difference = [todaysDate timeIntervalSinceDate:chosenDate] / 86400;
    dateFormat = [[NSDateFormatter alloc] init];
	[dateFormat setDateFormat:@"MMMM d, yyyy hh:mm:ssa"];
	todaysDateString = [dateFormat stringFromDate:todaysDate];
    chosenDateString = [dateFormat stringFromDate:chosenDate];
    
	differenceOutput=[[NSString alloc] initWithFormat:
					  @"Difference between chosen date (%@) and today (%@) in days: %1.2f",
					  chosenDateString,todaysDateString,fabs(difference)];
	self.outputLabel.text=differenceOutput;
    
}

- (IBAction)showDateChooser:(id)sender {
    if (self.dateChooserVisible!=YES){
        [self performSegueWithIdentifier:@"toDateChooser" sender:sender];
        self.dateChooserVisible=YES;
    }
}
@end
