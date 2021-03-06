//
//  EventViewController.h
//  AOC2project3
//
//  Created by Carol Gaylor on 1/23/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventViewDelegate <NSObject>

// This is the method delegate set for my string controls in the ViewController.h file
@required
-(void)closeView:(NSString*)closeString closeDate:(NSString *)closeDate;


@end
@interface EventViewController : UIViewController <UITextFieldDelegate>
{
    /* This is the outlets for all the visuals and strings that manipulate objects and 
     info in the secondView named EventView */
    IBOutlet UITextField *textInfo;
    IBOutlet UIDatePicker *pickerDate;
    NSString *dateString;
    NSString *stringEvent;
    NSDate  *startEvent;
    id <EventViewDelegate> delegate;
}

// This is the action methods for the save button and the picker
-(IBAction)dateOnChange:(id)sender;
-(IBAction)saveOnClick:(id)sender;


@property (strong) id <EventViewDelegate> delegate;
@end
