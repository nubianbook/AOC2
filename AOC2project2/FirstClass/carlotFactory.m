//
//  carlotFactory.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "carlotFactory.h"

@implementation carlotFactory

+(baseCarlot *)createNewCarlot: (int)myCarlotType
{
   //return [[myCarlotType alloc] init];
    
    if (myCarlotType == economy)
    {
        return [[economyCarlot alloc] init];
    } else if (myCarlotType == race)
    {
        return [[raceCarlot alloc] init];
    } else if (myCarlotType == luxury)
    {
       return [[luxuryCarlot alloc] init];
    } else return nil;

}

@end
