//
//  AddEventPageViewController.m
//  AOC2project3
//
//  Created by Carol Gaylor on 1/22/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "AddEventPageViewController.h"

@interface AddEventPageViewController ()

@end

@implementation AddEventPageViewController

@synthesize myDelegate;

-(NSString*)stringDate
{
    NSDateFormatter* date = [[NSDateFormatter alloc] init];
    [date setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
    myEventString = [myEventString stringByAppendingFormat:@"\n%@ \n\n", [date stringFromDate:pickerDate]];
    return myEventString;
}


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

-(IBAction)saveBtnOnClick:(id)sender
{
    if ([sender tag] == 0)
    {
        //dismiss keyboard
        [self closeKeyboard];
    }
    else if([sender tag] == 1)
    {
        //dismiss string with date
        myEventString = eventViewInfo.text;
        NSLog(@"%@", myEventString);
        [myDelegate closeView:[self stringDate]];
        [self dismissViewControllerAnimated:true completion:nil];
    } else {
    
        [self dismissViewControllerAnimated:true completion:nil];
    }
}

-(IBAction)viewOnChange:(id)sender
{
    pickerDate = eventDatePicker.date;
}
-(IBAction)closeKeyboard
{
    [eventViewInfo resignFirstResponder];
}

@end
