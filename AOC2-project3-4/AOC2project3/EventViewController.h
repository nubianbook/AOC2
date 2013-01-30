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
-(void)viewDidClose:(NSString*)stringEvent;


@end
@interface EventViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *textInfo;
    IBOutlet UIDatePicker *pickerDate;
    IBOutlet UILabel* swipeLabel;
    NSString *dateString;
    NSString *stringEvent;
    NSDate  *startEvent;
    UISwipeGestureRecognizer* leftSwipe;
    id <EventViewDelegate> delegate;
}


-(IBAction)dateOnChange:(id)sender;
-(IBAction)onClick:(id)sender;
-(IBAction)closeKeyboard;
-(NSString*)appendStringToDate;

//-(void)stringDate;

@property (strong) id <EventViewDelegate> delegate;
@end
