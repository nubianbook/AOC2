//
//  economyCarlot.h
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "baseCarlot.h"

@interface economyCarlot : baseCarlot
{
    int economyEnum;
}

typedef enum{
    ECONOMY,
    
} economyEnum;

// data members of for how many cars total and how many cars left after sale
@property int smallEngines;

@end
