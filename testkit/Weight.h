//
//  Weight.h
//  testkit
//
//  Created by Rebecca Koenning on 8/3/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberValue.h"

typedef enum
{
    KG,
    LB
}WeightUnit;


@interface Weight : NSObject <NumberValue>

@property (nonatomic) NSNumber* weight;
@property (nonatomic) WeightUnit units;

-(instancetype) initWithFloat: (float)weight unit: (WeightUnit) units;
-(NSString*) unitString;
-(void) convertTo: (WeightUnit) wu;
-(NSNumber*) getValueAs:(WeightUnit) wu;


@end
