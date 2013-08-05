//
//  DateChooserViewController.h
//  DateCalc
//
//  Created by Michael Crump on 8/3/13.
//  Copyright (c) 2013 Michael Crump. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface DateChooserViewController : UIViewController
- (IBAction)setDateTime:(id)sender;
- (IBAction)dismissDateChooser:(id)sender;
@property (weak, nonatomic) id delegate;
@end
