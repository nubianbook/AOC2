//
//  baseCarlot.m
//  FirstClass - Project 2
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "baseCarlot.h"

@implementation baseCarlot

// this synthesize creates get and set methods for each property
@synthesize carType, carName, discount, cost;

// initialize the base Carlot, creating the instance and setting up car cost to zero

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setCarType:nil];
        [self setCarName:nil];
        [self setDiscount:0];
        
    }
    return self;
}

// calculation and or manipulation method to car cost
-(void)calculateCarCost
{
    // no calculating now, only a statement written to the log with the current value
    [self setPricePerEngineSize:cost - discount];
}



@end
