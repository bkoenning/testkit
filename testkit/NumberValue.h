//
//  NumberValue.h
//  
//
//  Created by Rebecca Koenning on 8/3/15.
//
//

#import <Foundation/Foundation.h>

#ifndef _NumberValue_h
#define _NumberValue_h

@protocol NumberValue

@required
-(NSString*) valueAsString;
-(NSString*) unitString;

@end


#endif
