//
//  raceCarlot.h
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "baseCarlot.h"

@interface raceCarlot : baseCarlot
{
    int raceCars;
}

typedef enum{
    twoDoor,
    fourDoor,
    hatchback
} raceCars;

@property int amountCars;
@property int amountCarsSold;
@property int amountCarsLeft;



@end
