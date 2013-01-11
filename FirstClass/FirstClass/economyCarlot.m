//
//  economyCarlot.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "economyCarlot.h"

@implementation economyCarlot

@synthesize totalCars, totalCarsSold, totalCarsLeft;

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setTotalCarsLeft:40];
        [self setTotalCarsSold:10];
        [self setTotalCars:50];
        NSLog(@"You are now on the economy Car lot");
    }
    return self;
};

// overriding the baseCarlot count to factor in unique data members
-(void)calculateHowManyCars
{
    [self setTotalCarsLeft:(totalCarsSold - totalCars)];
    NSLog(@"There were %i cars remaining", self.totalCarsLeft);
}

@end  
