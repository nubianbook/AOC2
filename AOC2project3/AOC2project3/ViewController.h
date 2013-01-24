//
//  ViewController.h
//  AOC2project3
//
//  Created by Carol Gaylor on 1/23/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventViewController.h"

@interface ViewController : UIViewController <EventViewDelegate>
{
    IBOutlet UITextView *eventView;
    IBOutlet UILabel *topLabel;
    NSString *everyEventString;
}


-(IBAction)addOnClick:(id)sender;
@end
