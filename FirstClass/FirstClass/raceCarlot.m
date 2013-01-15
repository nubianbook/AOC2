//
//  raceCarlot.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "raceCarlot.h"

@implementation raceCarlot

@synthesize pricePerEngineSize, totalPriceRaceCar, discount, cost;

// customize the init for race carLot
-(id)init
{
        self = [super init];
        if (self !=nil)
        {
            // setting data members defaults
            [self setPricePerEngineSize:2100];
            [self setCarName:@"Mustang"];
            [self setCost:70000];
            [self setDiscount:1500];
            [self setTotalPriceRaceCar:52000];
            NSLog(@"You are now on the Race Car lot");
        }
        return self; 
}

// overwriting the calculation method
-(void)calculateTotalPriceRaceCar
{
    [self setTotalPriceRaceCar:(cost + pricePerEngineSize - discount)];
    NSLog(@"There were %i race cars remaining", self.totalPriceRaceCar);
}
    
@end

