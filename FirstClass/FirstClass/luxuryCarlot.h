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
    int luxuryCars;
}

typedef enum{
    smallLux,
    sedanLux,
    fullSizeLux
} luxuryCars;

@property int amountLuxuryCars;
@property int amountLuxuryCarsSold;
@property int amountLuxuryCarsLeft;

@end
