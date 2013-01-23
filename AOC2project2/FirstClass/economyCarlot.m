//
//  economyCarlot.m
//  FirstClass - Project 2
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "economyCarlot.h"

@implementation economyCarlot

@synthesize smallEngines, discount, cost;

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setSmallEngines:40];
        [self setCarType:economy];
        [self setCarName:@"Pinto"];
        [self setDiscount:200];
        [self setCost:5000];
        NSLog(@"You are now on the economy Car lot");
    }
    return self;
    
}


// overriding the baseCarlot count to factor in unique data members
-(void)calculateSmallEngines
{
    [self setSmallEngines:(cost - discount)];
    NSLog(@"There were %i cars remaining", self.smallEngines);
}

@end  
