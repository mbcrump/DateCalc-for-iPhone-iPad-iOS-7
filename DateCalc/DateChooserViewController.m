//
//  DateChooserViewController.m
//  DateCalc
//
//  Created by Michael Crump on 8/3/13.
//  Copyright (c) 2013 Michael Crump. All rights reserved.
//

#import "DateChooserViewController.h"

@interface DateChooserViewController ()

@end

@implementation DateChooserViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setDateTime:(id)sender {
        [(ViewController *)self.delegate calculateDateDifference:((UIDatePicker *)sender).date];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [(ViewController *)self.delegate calculateDateDifference:[NSDate date]];
}

- (void) viewDidDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    ((ViewController *)self.delegate).dateChooserVisible=NO;
}

- (IBAction)dismissDateChooser:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
