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
@synthesize carType, carName, carCost, discount, cost;

// initialize the base Carlot, creating the instance and setting up car cost to zero

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setCarType:nil];
        [self setCarName:nil];
        [self setCarCost:0];
        [self setDiscount:0];
    }
    return self;
}

// calculation and or manipulation method to car cost
-(void)calculateCarCost
{
    // no calculating now, only a statement written to the log with the current value
    [self setCarCost:cost - discount];
}



@end
