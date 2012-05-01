//
//  RunTimesDataSource.h
//  MIEAssignment1
//
//  Created by Matt Erlick on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RunTimesDataSource : NSObject

+ (void) addRunTime;
+ (NSMutableArray *) getRunTimes;

@end
