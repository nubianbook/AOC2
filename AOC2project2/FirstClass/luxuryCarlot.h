//
//  luxuryCarlot.h
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "baseCarlot.h"

@interface luxuryCarlot : baseCarlot
{
    int luxuryEnum;
}

typedef enum{
    LUXURY,
    
} luxuryEnum;

-(void)calculateTotalPrice;

@property int luxuryTotalPrices;
@property int luxuryUpgradePrices;
@property int totalPrice;


@end
