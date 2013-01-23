 //
//  luxuryCarlot.m
//  FirstClass - Project 2
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "luxuryCarlot.h"

@implementation luxuryCarlot

@synthesize luxuryUpgradePrices, luxuryTotalPrices, totalPrice, cost, discount;

// customizing the init for luxury Carlot
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        // setting data members defaults
        [self setLuxuryUpgradePrices:2500];
        [self setTotalPrice:52500];
        [self setCarName:@"Lincoln"];
        [self setCost:50000];
        [self setDiscount:6000];
        
        NSLog(@"You are now on the Luxury Car lot");
    }
    return self;
};

// overwriting the calculation method
-(void)calculateTotalPrice
{
    [self setLuxuryTotalPrices:(luxuryUpgradePrices + cost - discount)];
    NSLog(@"There were %i luxury cars remaining", self.luxuryTotalPrices);
}

@end
