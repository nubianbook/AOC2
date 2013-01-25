//
//  EventViewController.m
//  AOC2project3
//
//  Created by Carol Gaylor on 1/23/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "EventViewController.h"

@interface EventViewController ()

@end

@implementation EventViewController

@synthesize delegate;


-(IBAction)saveOnClick:(id)sender
{
    // This conditional is set up to display the event and to string the date
    if ([sender tag] == 0)
    {
        // Local Variables
        startEvent = pickerDate.date;
        stringEvent = textInfo.text;
        NSLog(@"%@", stringEvent);
        // Date formatter to construct a nice looking date arrangment an string to eventView
        NSDateFormatter* dateForm = [[NSDateFormatter alloc] init];
        [dateForm setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
        dateString = [dateForm stringFromDate:startEvent];
        NSLog(@"%@", dateString);
        
        //This conditional checks for text input 
        if ([textInfo.text length] == 0)
        {
            //UI alert requesting text
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Event info please" message:@"Opps you forgot some data" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            if (alert != nil)
            {
                [alert show];
            }
        } else {
             //Passes info to delegate
            [delegate closeView:stringEvent closeDate:dateString];
            
             //Close view
            [self dismissViewControllerAnimated:true completion:nil];
        }
    
    } else if ([sender tag] == 1)
    {
        [textInfo resignFirstResponder];
    }
    
}

// Thought I was going to need this but nope
-(IBAction)dateOnChange:(id)sender
{

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
    // Date picker minimum date here to restrict any dates beyond current date
    pickerDate.minimumDate = [NSDate date];
    startEvent = pickerDate.date;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
   
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
