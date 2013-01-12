//
//  ViewController.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/8/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    topLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 5.0f, 200.0f, 30.0f)];
    topLabel.backgroundColor = [UIColor yellowColor];
    topLabel.textColor = [UIColor blackColor];
    topLabel.text = [NSString stringWithFormat:@"Carol Gaylor AOC2 1301"];
    [self.view addSubview:topLabel];
    
    // create a economy Carlot and set how many
    economyCarlot *carolsDealerShip = (economyCarlot*)[carlotFactory createNewCarlot:economy];
    [carolsDealerShip setHowManyCars:50];
    
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
    economyNumLabel.text = [NSString stringWithFormat:@"There are %i econ cars on the lot", [carolsDealerShip howManyCars]];
    [self.view addSubview:economyNumLabel];
    
    
    if (carolsDealerShip != nil){
        
        NSArray *economyCarType = [[NSArray alloc]
                                     initWithObjects:@"economy",nil];
        [carolsDealerShip setCarType:economyCarType];
        
        NSString *econCarInfo = @"The Best Economy Cars in Michigan are sold at Carols Dealership.";
        [carolsDealerShip setCarInfo:econCarInfo];
        
        NSLog(@"Drive a car off Carols Carlot "
              "get the %@", [carolsDealerShip carType]);
        NSLog(@"%@", carolsDealerShip.carInfo);
        
        }
    
    // create same info for race car
    raceCarlot *carolsRaceCarlot = (raceCarlot*)[carlotFactory createNewCarlot:race];
    [carolsRaceCarlot setHowManyCars:20];
    
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
    raceCarNumLabel.text = [NSString stringWithFormat:@"There are %i race cars on the lot", [carolsRaceCarlot howManyCars]];
    [self.view addSubview:raceCarNumLabel];
    
    if (carolsRaceCarlot != nil) {
        NSArray *raceCarType = [[NSArray alloc]
                                   initWithObjects:@"race car",nil];
        [carolsRaceCarlot setCarType:raceCarType];
        
        NSString *raceCarInfo = @"The Best Race Cars in Michigan are sold at Carols Dealership.";
        [carolsDealerShip setCarInfo:raceCarInfo];
        
        NSLog(@"Drive a car off Carols Carlot "
              "get the %@", [carolsRaceCarlot carType]);
        NSLog(@"%@", carolsRaceCarlot.carInfo);
        
        // calculate and log how many cars
        [carolsRaceCarlot calculateHowManyCars];
    }
    
    // create same info for luxury car
    luxuryCarlot *carolsLuxuryCarlot = (luxuryCarlot*)[carlotFactory createNewCarlot:luxury];
    [carolsLuxuryCarlot setHowManyCars:15];
    
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
    luxuryCarNumLabel.text = [NSString stringWithFormat:@"There are %i luxury cars on the lot", [carolsLuxuryCarlot howManyCars]];
    [self.view addSubview:luxuryCarNumLabel];
    
    if (carolsLuxuryCarlot != nil) {
        NSArray *luxuryCarType = [[NSArray alloc]
                                initWithObjects:@"luxury car",nil];
        [carolsLuxuryCarlot setCarType:luxuryCarType];
        
        NSString *luxuryCarInfo = @"The Best Race Cars in Michigan are sold at Carols Dealership.";
        [carolsLuxuryCarlot setCarInfo:luxuryCarInfo];
        
        NSLog(@"Drive a car off Carols Carlot "
              "get the %@", [carolsLuxuryCarlot carType]);
        NSLog(@"%@", carolsLuxuryCarlot.carInfo);
        
        // calculate and log how many cars
        [carolsLuxuryCarlot calculateHowManyCars];
    }
    
     
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
