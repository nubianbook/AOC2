 //
//  luxuryCarlot.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "luxuryCarlot.h"

@implementation luxuryCarlot

@synthesize amountLuxuryCars, amountLuxuryCarsLeft, amountLuxuryCarsSold;

// customizing the init for luxury Carlot
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        // setting data members defaults
        [self setAmountLuxuryCars:15];
        [self setAmountLuxuryCarsSold:7]; 
        [self setAmountLuxuryCarsLeft:8];
        NSLog(@"You are now on the Luxury Car lot");
    }
    return self;
};

// overwriting the calculation method
-(void)calculateHowManyLuxuryCars
{
    [self setAmountLuxuryCarsLeft:(amountLuxuryCars - amountLuxuryCarsSold)];
    NSLog(@"There were %i luxury cars remaining", self.amountLuxuryCarsLeft);
}

@end
