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


//No longer necessary
/*-(void)stringDate
{            //append the date to the event description
        NSDateFormatter* dateForm = [[NSDateFormatter alloc] init];
        [dateForm setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
        dateString = [dateForm stringFromDate:startEvent];
        NSLog(@"%@", dateString);
        //stringEvent = [stringEvent stringByAppendingFormat:@"\n%@ \n\n", [dateForm stringFromDate:startEvent]];
        //return stringEvent;
}*/




-(IBAction)saveOnClick:(id)sender
{
    if ([sender tag] == 0)
    {
        
        startEvent = pickerDate.date;
        stringEvent = textInfo.text;
        NSLog(@"%@", stringEvent);
        
        NSDateFormatter* dateForm = [[NSDateFormatter alloc] init];
        [dateForm setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
        dateString = [dateForm stringFromDate:startEvent];
        NSLog(@"%@", dateString);
    
        //This conditional checks to see if text has been inputted
        if ([textInfo.text length] == 0)
        {
            //Set up UI alert here saying that there is a required text limit
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Event info please" message:@"Opps you forgot some data" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            if (alert != nil)
            {
                [alert show];
            }
        }
         else {

             //Passes information back to the delegate
            [delegate closeView:stringEvent closeDate:dateString];
            
             //Dismisses view
             [self dismissViewControllerAnimated:true completion:nil];
        }
    
    } else if ([sender tag] == 1)
    {
        [textInfo resignFirstResponder];
    }
    
}

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
    //Put your date picker minimum date here
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
