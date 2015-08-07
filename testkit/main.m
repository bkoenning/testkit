//
//  main.m
//  testkit
//
//  Created by Rebecca Koenning on 8/3/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weight.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Weight *w1 = [[Weight alloc]initWithFloat:165.4323 unit:KG];
        Weight *w2 = [[Weight alloc] initWithFloat:163.00 unit:KG];
        NSLog(@"%@", [w1 description]);
        NSLog(@"%@", [w2 description]);
        
        
        
    }
    return 0;
}
