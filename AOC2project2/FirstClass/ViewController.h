//
//  ViewController.h
//  FirstClass
//
//  Created by Carol Gaylor on 1/8/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "carlotFactory.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UISegmentedControl * defaultColor;
    IBOutlet UIButton *economyBtn;
    IBOutlet UIButton *racerBtn;
    IBOutlet UIButton *luxuryBtn;
    IBOutlet UILabel *viewlabel;
    IBOutlet UIButton *calculator;
    IBOutlet UIStepper *stepper;
    
    
    
}

-(IBAction)infoOnClickBtn:(id)sender;
-(IBAction)segOnColorBtn:(id)sender;
-(IBAction)economyBtnFunction:(id)sender;
-(IBAction)racerBtnFunction:(id)sender;
-(IBAction)luxuryBtnFunction:(id)sender;
-(IBAction)stepperFunction:(id)sender;
-(IBAction)calculatorBtnFunction:(id)sender;

@end





//From my previous project 1
/*{
    UILabel *topLabel;
    UILabel *economyLabel;
    UILabel *economyNumLabel;
    UILabel *raceCarLabel;
    UILabel *raceCarNumLabel;
    UILabel *luxuryCarLabel;
    UILabel *luxuryCarNumLabel;
}*/


