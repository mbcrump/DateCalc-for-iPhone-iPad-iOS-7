//
//  ViewController.h
//  DateCalc
//
//  Created by Michael Crump on 8/3/13.
//  Copyright (c) 2013 Michael Crump. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateChooserViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
- (IBAction)showDateChooser:(id)sender;
@property (nonatomic) Boolean dateChooserVisible;
- (void)calculateDateDifference:(NSDate *)chosenDate;

@end
