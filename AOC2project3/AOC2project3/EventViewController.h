//
//  EventViewController.h
//  AOC2project3
//
//  Created by Carol Gaylor on 1/23/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventViewDelegate <NSObject>
@required
-(void)closeView:(NSString*)closeString closeDate:(NSString *)closeDate;


@end
@interface EventViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *textInfo;
    IBOutlet UIDatePicker *pickerDate;
    NSString *dateString;
    NSString *stringEvent;
    NSDate  *startEvent;
    id <EventViewDelegate> delegate;
}


-(IBAction)dateOnChange:(id)sender;
-(IBAction)saveOnClick:(id)sender;
//-(void)stringDate;

@property (strong) id <EventViewDelegate> delegate;
@end
