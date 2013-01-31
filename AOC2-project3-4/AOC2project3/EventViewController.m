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
// I am append 
-(NSString*)appendStringToDate
{
    // Creating and naming a new ns object
    NSDateFormatter * dateFormat = [[NSDateFormatter alloc] init];
    // Setting my date format to my object
    [dateFormat setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
    // Calling my picker info string to my string event
    stringEvent = [stringEvent stringByAppendingFormat:@"\n%@ \n\n", [dateFormat stringFromDate:startEvent]];
    // I am returing my string event from my function
    return stringEvent;
}

-(IBAction)closeKeyboard
{
    [textInfo resignFirstResponder];
}


// Never use a string the is != nil for stringing to view
-(void)onSwipe:(UIGestureRecognizer*)swipe
{
    
    if ([textInfo.text length] == 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"No Text" message:@"Please input event text" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        if (alertView != nil)
        {
            [alertView show];
        }
    } else if ([textInfo.text length] >= 1)
    {
        // Assigning the string of text view to a variable/container
        stringEvent = textInfo.text;
        // delegating to apend to self
        [delegate viewDidClose:[self appendStringToDate]];
        //  dismissing to the home view
        [self dismissViewControllerAnimated:true completion:nil];

    }
      
            //show alert to prompt description
       /* UIAlertView* errorAlert = [[UIAlertView alloc] initWithTitle:@"Error!"
                                                             message:@"Please enter a description" delegate:nil
                                                   cancelButtonTitle:@"Okay" otherButtonTitles: nil];
        [errorAlert show];*/
}     



-(IBAction)onClick:(id)sender
{
    if ([sender tag] == 0)
    {
        [self closeKeyboard];
    }
    else if ([sender tag] == 1)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
}
       
-(IBAction)dateOnChange:(id)sender
{
    startEvent = pickerDate.date;
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
    pickerDate.minimumDate = [NSDate date];
    startEvent = pickerDate.date;
    
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:leftSwipe];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
        
      /*  startEvent = pickerDate.date;
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
            //[delegate closeView:stringEvent closeDate:dateString];
            
            //Dismisses view
            [self dismissViewControllerAnimated:true completion:nil];
        }
        
    } else if ([sender tag] == 1)
    {
        [textInfo resignFirstResponder];
    }
    
}
*/
