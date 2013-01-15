//
//  economyCarlot.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "economyCarlot.h"

@implementation economyCarlot

@synthesize howManySmallEngines, discount, cost;

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setHowManySmallEngines:40];
        [self setCarType:economy];
        [self setCarName:@"Pinto"],
        [self setCost:5000];
        NSLog(@"You are now on the economy Car lot");
    }
    return self;
    
}

// overriding the baseCarlot count to factor in unique data members
-(void)calculateHowManySmallEngines
{
    [self setHowManySmallEngines:(cost - howManySmallEngines)];
    NSLog(@"There were %i cars remaining", self.howManySmallEngines);
}

@end  
