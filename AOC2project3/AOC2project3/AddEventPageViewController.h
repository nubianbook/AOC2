//
//  AddEventPageViewController.h
//  AOC2project3
//
//  Created by Carol Gaylor on 1/22/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddEventPageViewDelegate <NSObject>
@required
-(void)closeView:(NSString*)myEventString;

@end
@interface AddEventPageViewController : UIViewController
{
    IBOutlet UITextField * eventViewInfo;
    IBOutlet UIDatePicker * eventDatePicker;
    NSDate *pickerDate;
    NSString *myEventString;
    id <AddEventPageViewDelegate> myDelegate;
}

-(IBAction)saveBtnOnClick:(id)sender;
-(IBAction)viewOnChange:(id)sender;
-(IBAction)closeKeyboard;
-(NSString*)stringDate;


@property (strong) id <AddEventPageViewDelegate> myDelegate;
@end
