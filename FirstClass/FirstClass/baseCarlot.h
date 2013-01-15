//
//  baseCarlot.h
//  FirstClass
//
//  Created by Carol Gaylor on 1/9/13.
//  Copyright (c) 2013 Carol Gaylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCarlot : NSObject
{
    int carlotEnum;
}

typedef enum{
    economy,
    race,
    luxury
} carlotEnum;

// these are my data members for cars available, an array for car colors and a NSString for car details

@property (strong) NSArray *carType;  // I replaced (nonatomic, assign) with strong
@property (strong) NSString *carName;
@property int discount;
@property int cost;
@property int carCost;


// initialize
-(id)init;

// this is to calculate and or to manipulate method to find out how many cars
-(void)calculateCarCost;
 
   

@end
