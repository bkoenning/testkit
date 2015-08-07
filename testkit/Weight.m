//
//  Weight.m
//  testkit
//
//  Created by Rebecca Koenning on 8/3/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import "Weight.h"

const float pounds_per_kg = 2.20462;

@implementation Weight

@synthesize weight, units;


-(instancetype) initWithFloat:(float)value unit:(WeightUnit)u
{
    self = [super init];
    if (self){
        self.weight = [NSNumber numberWithFloat:value];
        self.units = u;
    }
    return self;
}

-(instancetype) init
{
    self = [self initWithFloat:0.0 unit:KG];
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ %@", [ self valueAsString], [self unitString]];
}

-(NSString *) unitString
{
    if ([ self units] == KG) return @"kg";
    else return @"lb";
}

-(NSString*) valueAsString
{
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    [format setMaximumFractionDigits:2];
    return [NSString stringWithFormat:@"%@", [ format stringFromNumber:[self weight]]];
}

-(void) convertTo:(WeightUnit)wu
{
    if (wu == KG && [self units] == LB){
        [self setWeight:[ NSNumber numberWithFloat:[[self weight]floatValue] / pounds_per_kg]];
        [self setUnits:wu];
    }
    else if (wu == LB && [self units] == KG){
        [self setWeight:[NSNumber numberWithFloat:[[self weight] floatValue] * pounds_per_kg]];
        [self setUnits:wu];
    }
}

-(NSNumber*) getValueAs:(WeightUnit)wu
{
    if (wu == KG && [self units] == LB){
        return  [NSNumber numberWithFloat:[[self weight]floatValue] / pounds_per_kg];
    }
    else if (wu == LB && [self units ] == KG){
        return [NSNumber numberWithFloat:[[self weight] floatValue ] * pounds_per_kg];
    }
    else
        return [self weight];
    
}

@end
