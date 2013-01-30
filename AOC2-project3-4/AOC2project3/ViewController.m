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

//This delegate, is collecting info from the view through 2 parameters, closeString and closeDate
-(void)viewDidClose:(NSString*)stringEvent
{
    //taking the two parameters passed in and combining them into one string
    if (everyEventString != nil)
    {
        everyEventString = [everyEventString stringByAppendingString:stringEvent];
    } else {
        everyEventString = [NSString stringWithFormat:@"%@", stringEvent];
    }
     eventView.text = everyEventString;
    
}    
    
    //This appends everyEventString to the UITextView, which is eventView.
   // eventView.text = [eventView.text stringByAppendingString:everyEventString];

    
    //Not needed
    //if (everyEventString != nil)
    //{
        
        //everyEventString = [NSString stringWithFormat:@"\n %@ on %@", closeString, closeDate];
        //everyEventString = [everyEventString stringByAppendingString:closeString];
    //} else {
    
        //everyEventString = [NSString stringWithFormat:@"%@", closeString];
    //}
    


-(void)onSwipe:(UIGestureRecognizer*)swipe
{
    EventViewController* myEventView = [[EventViewController alloc] initWithNibName:@"EventView" bundle:nil];
    myEventView.delegate = self;
    [self presentViewController:myEventView animated:true completion:nil]; 

}

// This is the new save on Click action function
-(IBAction)saveOnClick:(id)sender
{
    [storedEvents setObject:everyEventString forKey:@"event"];
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
    storedEvents = [NSUserDefaults standardUserDefaults];
    everyEventString = [storedEvents objectForKey:@"event"];
    if (everyEventString != nil)
    {
        eventView.text = everyEventString;
    }
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
