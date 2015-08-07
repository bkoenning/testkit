//
//
//  Amputations.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "Amputations.h"

@implementation Amputations

@synthesize amps, percentages;

-(id)init
{
    self = [super init];
    [self setAmps:[NSMutableDictionary dictionary]];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm_checked_first"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm_checked_first"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg_checked_first"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg_checked_first"];
    
    [self setPercentages:[NSMutableDictionary dictionary]];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.3] forKey:@"left_lower_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.3] forKey:@"right_lower_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 5.9] forKey:@"right_lower_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 5.9] forKey:@"left_lower_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 10.1] forKey:@"right_upper_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 10.1] forKey:@"left_upper_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.7] forKey:@"right_upper_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.7] forKey:@"left_upper_arm_percent"];



    
    return self;
}

-(void)dealloc
{
    [self setAmps:nil];
    [self setPercentages:nil];
    
}



@end