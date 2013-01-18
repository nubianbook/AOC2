//
//  ViewController.m
//  FirstClass - Project 2
//
//  Created by Carol Gaylor on 1/8/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@implementation ViewController

// my button setup
-(IBAction)economyBtnFunction:(id)sender
{
    int addup = stepper.value;
    viewlabel.text = [NSString stringWithFormat:@"Economy is %d", addup];
    
    economyBtn.enabled = false;
    racerBtn.enabled = true;
    luxuryBtn.enabled = true;
}

-(IBAction)racerBtnFunction:(id)sender
{
    int addup = stepper.value;
    viewlabel.text = [NSString stringWithFormat:@"Racer is %d", addup];
    
    economyBtn.enabled = true;
    racerBtn.enabled = false;
    luxuryBtn.enabled = true;
    
}

-(IBAction)luxuryBtnFunction:(id)sender
{
    int addup = stepper.value;
    viewlabel.text = [NSString stringWithFormat:@"Luxury is %d", addup];
    
    economyBtn.enabled = true;
    racerBtn.enabled = true;
    luxuryBtn.enabled = false;
}
// my function setups for the stepper and the calculatorBtn

-(IBAction)stepperFunction:(id)sender
{
    int addup = stepper.value;
    if (economyBtn.enabled && racerBtn.enabled && luxuryBtn.enabled == true)
    {
        viewlabel.text = [NSString stringWithFormat:@"%d", addup];
    } else if (economyBtn.enabled == false)
    {
        viewlabel.text = [NSString stringWithFormat:@"%d economy", addup];
    } else if (racerBtn.enabled == false)
    {
        viewlabel.text = [NSString stringWithFormat:@"%d racer", addup];
    } else if (luxuryBtn.enabled == false)
    {
        viewlabel.text = [NSString stringWithFormat:@"%d luxury", addup];
    }
}

-(IBAction)calculatorBtnFunction:(id)sender
{
    int addup = stepper.value;
    viewlabel.text = [NSString stringWithFormat:@"Lot is empty %d", addup];
    if (economyBtn.enabled == false)
    {
        economyCarlot *economyLot = (economyCarlot*)[carlotFactory createNewCarlot:economy];
        if (economyLot !=nil)
        {
            [economyLot setSmallEngines:40];
            [economyLot calculateCarCost];
            int carTotal = economyLot.smallEngines * addup;
            viewlabel.text = [NSString stringWithFormat:@"econ total cost =%d", carTotal];
            stepper.value = 1;
        }
    } else if (racerBtn.enabled == false)
    {
        raceCarlot *raceLot = (raceCarlot*)[carlotFactory createNewCarlot:race];
        if (raceLot !=nil)
        {
            [raceLot pricePerEngineSize];
            [raceLot totalPriceRaceCar];
            int carTotal = raceLot.totalPriceRaceCar * addup;
            viewlabel.text = [NSString stringWithFormat:@"race carTotal=%d", carTotal];
            stepper.value = 1;
        }
    } else if (luxuryBtn.enabled == false)
    {
        luxuryCarlot *luxuryLot = (luxuryCarlot*)[carlotFactory createNewCarlot:luxury];
        if (luxuryLot !=nil)
        {
            [luxuryLot luxuryTotalPrices];
            [luxuryLot totalPrice];
            int carTotal = luxuryLot.luxuryUpgradePrices * addup;
            viewlabel.text = [NSString stringWithFormat:@"Luxury total cost %d", carTotal];
            stepper.value = 1;
            NSLog(@"you are at the luxury lot");
        }
        
    }
    stepper.value = 1;
}

/*- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text =@"";
    return true;
}*/

-(IBAction)infoOnClickBtn:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (viewController !=nil)
    {
        [self presentViewController:viewController animated:true completion:nil];
    }
    
    
}


-(IBAction)segOnColorBtn:(id)sender
{
    UISegmentedControl * segColorChange = (UISegmentedControl*)sender;
    if (segColorChange !=nil)
    {
        int selectedIndex = segColorChange.selectedSegmentIndex;
        if (selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor greenColor];
        } else if (selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor redColor];
        } else if (selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        
    }
}

-(void)viewDidAppear:(BOOL)animated
{
     economyBtn.tintColor = [UIColor grayColor];
     racerBtn.tintColor = [UIColor blueColor];
     luxuryBtn.tintColor = [UIColor purpleColor];
    
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end



/*{
 topLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 5.0f, 200.0f, 30.0f)];
 topLabel.backgroundColor = [UIColor yellowColor];
 topLabel.textColor = [UIColor blackColor];
 topLabel.text = [NSString stringWithFormat:@"Carol Gaylor AOC2 1301"];
 [self.view addSubview:topLabel];
 
 // create a economy Carlot and set how many
 economyCarlot *econLot = (economyCarlot*)[carlotFactory createNewCarlot:economy];
 
 economyLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 60.0f, 320.0f, 50.0f)];
 economyLabel.backgroundColor = [UIColor orangeColor];
 economyLabel.textColor = [UIColor blueColor];
 economyLabel.numberOfLines = 4;
 economyLabel.text = [NSString stringWithFormat:@"The Best Economy Cars in Michigan ."];
 [self.view addSubview:economyLabel];
 
 
 economyNumLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 140.0f, 320.0f, 50.0f)];
 economyNumLabel.backgroundColor = [UIColor purpleColor];
 economyNumLabel.textColor = [UIColor whiteColor];
 economyNumLabel.numberOfLines = 4;
 economyNumLabel.text = [NSString stringWithFormat:@"There are %i econ cars on the lot", [econLot smallEngines]];
 [self.view addSubview:economyNumLabel];
 
 
 // create same info for race car
 raceCarlot *carolsRaceCarlot = (raceCarlot*)[carlotFactory createNewCarlot:race];
 
 raceCarLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 200.0f, 320.0f, 50.0f)];
 raceCarLabel.backgroundColor = [UIColor redColor];
 raceCarLabel.textColor = [UIColor blueColor];
 raceCarLabel.numberOfLines = 4;
 raceCarLabel.text = [NSString stringWithFormat:@"The Best Race Cars in Michigan."];
 [self.view addSubview:raceCarLabel];
 
 raceCarNumLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 260.0f, 320.0f, 50.0f)];
 raceCarNumLabel.backgroundColor = [UIColor orangeColor];
 raceCarNumLabel.textColor = [UIColor blueColor];
 raceCarNumLabel.numberOfLines = 4;
 raceCarNumLabel.text = [NSString stringWithFormat:@"There are %i race cars on the lot", [carolsRaceCarlot totalPriceRaceCar]];
 [self.view addSubview:raceCarNumLabel];
 
 
 // create same info for luxury car
 luxuryCarlot *carolsLuxuryCarlot = (luxuryCarlot*)[carlotFactory createNewCarlot:luxury];
 
 luxuryCarLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 330.0f, 320.0f, 50.0f)];
 luxuryCarLabel.backgroundColor = [UIColor blueColor];
 luxuryCarLabel.textColor = [UIColor whiteColor];
 luxuryCarLabel.numberOfLines = 4;
 luxuryCarLabel.text = [NSString stringWithFormat:@"The Best Luxury Cars."];
 [self.view addSubview:luxuryCarLabel];
 
 luxuryCarNumLabel = [[UILabel alloc] initWithFrame:CGRectMake(2.0f, 400.0f, 320.0f, 50.0f)];
 luxuryCarNumLabel.backgroundColor = [UIColor whiteColor];
 luxuryCarNumLabel.textColor = [UIColor blueColor];
 luxuryCarNumLabel.numberOfLines = 4;
 luxuryCarNumLabel.text = [NSString stringWithFormat:@"There are %d luxury cars on the lot", [carolsLuxuryCarlot luxuryTotalPrices]];
 [self.view addSubview:luxuryCarNumLabel];
 
 
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 }*/
