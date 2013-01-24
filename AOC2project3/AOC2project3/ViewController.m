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

//This is the delegate, collecting information from the other view through 2 parameters, closeString and closeDate
-(void)closeView:(NSString*)closeString closeDate:(NSString *)closeDate
{
    //taking the two parameters passed in and combining them into one string
    everyEventString = [NSString stringWithFormat:@"\n %@ on %@", closeString, closeDate];
    
    //This appends everyEventString to the UITextView, which is eventView.
    eventView.text = [eventView.text stringByAppendingString:everyEventString];
    
    
    //Not needed
    //if (everyEventString != nil)
    //{
        
        //everyEventString = [NSString stringWithFormat:@"\n %@ on %@", closeString, closeDate];
        //everyEventString = [everyEventString stringByAppendingString:closeString];
    //} else {
    
        //everyEventString = [NSString stringWithFormat:@"%@", closeString];
    //}
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addOnClick:(id)sender
{
    EventViewController *myEventView = [[EventViewController alloc] initWithNibName:@"EventView" bundle:nil];
    myEventView.delegate = self;
    [self presentViewController:myEventView animated:true completion:nil];
}
@end
