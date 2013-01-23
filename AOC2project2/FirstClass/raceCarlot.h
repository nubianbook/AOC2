//
//  raceCarlot.h
//  FirstClass - Project 2
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "baseCarlot.h"

@interface raceCarlot : baseCarlot
{
    int raceEnum;
}

typedef enum{
    RACE,
} raceEnum;

-(void)calculateTotalPriceRaceCar;


@property int pricePerEngineSize;
@property int totalPriceRaceCar;



@end
