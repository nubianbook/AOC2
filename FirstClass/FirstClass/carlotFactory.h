//
//  carlotFactory.h
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCarlot.h"
#import "economyCarlot.h"
#import "raceCarlot.h"
#import "luxuryCarlot.h"

@interface carlotFactory : NSObject

+(baseCarlot *)createNewCarlot: (int)carlotType;

@end
