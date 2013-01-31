//
//  ViewController.m
//  AOC2project3
//
//  Created by Carol Gaylor on 1/23/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"
#import "EventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//This delegate is collection the saved information from the eventviewcontroller and stores it in the parameter string event
-(void)viewDidClose:(NSString*)stringEvent
{

    everyEventString = stringEvent;
    
    //Runs a conditional to check and see if the default text is present, which is "Events will be shown here"
    if ([eventView.text isEqualToString:@"Events will be shown here"])
    {
        //Sets the text view text to be equal to the text saved from the second view
        eventView.text = everyEventString;
    
    // checks to see whether the default is present.  If it is not present, the code below will run.
    } else if (![eventView.text isEqualToString:@"Events will be shown here"])
    {
        //This appends instead of replaces the text and it adds to the text
        everyEventString = [eventView.text stringByAppendingString:stringEvent];
        
        //Sets the text view to equal the appended string
        eventView.text = everyEventString;        
            
    }
    
}    
        

//Swipe right function that swipes to second view
-(void)onSwipe:(UIGestureRecognizer*)swipe
{
    //Creates an event view object that is linked to second view.
    EventViewController* myEventView = [[EventViewController alloc] initWithNibName:@"EventView" bundle:nil];
    
    //This sets the delegate for the view to self
    myEventView.delegate = self;
    
    //Brings up the second view object that created two lines above. It sets an animation 
    [self presentViewController:myEventView animated:true completion:nil];

}


// This is the new save on Click action function
-(IBAction)saveOnClick:(id)sender
{
    //Creating an NSUserDefaults object, naming it stored events, giving it a type of standard user defaults.
    NSUserDefaults *storedEvents = [NSUserDefaults standardUserDefaults];
    
    //Sets a key/object pair. The object is the text from the text view, and the key is event.
    [storedEvents setObject:eventView.text forKey:@"event"];
    
    //Commits to the nsuserdefault
    [storedEvents synchronize];
    
    //show alert to notify user of save
    UIAlertView* saveAlert = [[UIAlertView alloc] initWithTitle:@"Saved!"
                                                        message:@"Your events have been saved" delegate:nil
                                              cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [saveAlert show];
}


- (void)viewDidLoad
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swiperLabel addGestureRecognizer:rightSwipe];
    
    
    NSUserDefaults *storedEvents = [NSUserDefaults standardUserDefaults];
    NSString * containerString = [storedEvents objectForKey:@"event"];
    eventView.text = containerString;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//This is the old add onClick action function
/*-(IBAction)addOnClick:(id)sender
{
    EventViewController *myEventView = [[EventViewController alloc] initWithNibName:@"EventView" bundle:nil];
    myEventView.delegate = self;
    [self presentViewController:myEventView animated:true completion:nil];
}*/
@end
