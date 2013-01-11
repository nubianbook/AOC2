//
//  baseCarlot.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "baseCarlot.h"

@implementation baseCarlot

// this synthesize creates get and set methods for each property
@synthesize carType, carInfo, howManyCars;

// initialize the base Carlot, creating the instance and setting up how many cars to zero

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setHowManyCars:0];
        [self setCarType:nil];
        [self setCarInfo:nil];
    }
    return self;
}

// calculation and or manipulation method to find how many cars
-(void)calculateHowManyCars
{
    // no calculating now, only a statement written to the log with the current value
    NSLog(@"There are %i cars remaining in this car lot", howManyCars);
}



@end
