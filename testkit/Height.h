//
//  Height.h
//  testkit
//
//  Created by Rebecca Koenning on 8/3/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberValue.h"

typedef enum
{
    CM,
    IN
}HeightUnit;


@interface Height : NSObject <NumberValue>

@property (nonatomic) NSNumber* height;
@property (nonatomic) HeightUnit units;

-(instancetype) initWithFloat: (float)height unit: (HeightUnit) units;
-(NSString*) unitString;
-(void) convertTo: (HeightUnit) hu;
-(NSNumber*) getValueAs:(HeightUnit) hu;


@end
