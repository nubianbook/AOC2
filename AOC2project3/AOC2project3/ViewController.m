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
-(void)closeView:(NSString*)closeString closeDate:(NSString *)closeDate
{
    //Now the parameters are combining them into one string
    everyEventString = [NSString stringWithFormat:@"\n %@ event on \n %@\n", closeString, closeDate];
    
    //This appends everyEventString to the UITextView, which is eventView.
    eventView.text = [eventView.text stringByAppendingString:everyEventString];

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
// This is the controls for my add button initiating my second view called EventView
{
    EventViewController *myEventView = [[EventViewController alloc] initWithNibName:@"EventView" bundle:nil];
    myEventView.delegate = self;
    [self presentViewController:myEventView animated:true completion:nil];
}
@end
