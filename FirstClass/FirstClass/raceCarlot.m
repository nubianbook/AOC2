//
//  raceCarlot.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "raceCarlot.h"

@implementation raceCarlot

@synthesize amountCars, amountCarsSold, amountCarsLeft;

// customize the init for race carLot
-(id)init
{
        self = [super init];
        if (self !=nil)
        {
            // setting data members defaults
            [self setAmountCars:20];
            [self setAmountCarsSold:5];
            [self setAmountCarsLeft:15];
            NSLog(@"You are now on the Race Car lot");
        }
        return self;
};

// overwriting the calculation method
-(void)calculateHowManyRaceCars
{
    [self setAmountCarsLeft:(amountCars - amountCarsSold)];
    NSLog(@"There were %i race cars remaining", self.amountCarsLeft);
}
    
@end

