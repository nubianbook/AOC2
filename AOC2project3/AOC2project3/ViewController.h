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
    // This is the outlets for my textView and my Label on the first page
    IBOutlet UITextView *eventView;
    IBOutlet UILabel *topLabel;
    NSString *everyEventString;
}

// This the action method for my add button
-(IBAction)addOnClick:(id)sender;
@end
