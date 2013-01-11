//
//  carlotFactory.m
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import "carlotFactory.h"

@implementation carlotFactory

+(baseCarlot *)createNewCarlot: (int)carlotType
{
    return [[economyCarlot alloc] init];
}

@end
