//
//  RunTimesDataSource.m
//  MIEAssignment1
//
//  Created by Matt Erlick on 4/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RunTimesDataSource.h"

@implementation RunTimesDataSource

+ (NSMutableArray *) getRunTimes {
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSMutableArray *runTimesArray = [prefs objectForKey:@"runTimes"];
    if (!runTimesArray) {
        runTimesArray = [[NSMutableArray alloc] init];
    }
    
    return [runTimesArray mutableCopy];
}

+ (void) addRunTime {
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    NSLog(@"%@",dateString);
    
    NSMutableArray *runTimesArray = [RunTimesDataSource getRunTimes];
    
    
    [runTimesArray addObject:dateString];
    
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
    [prefs setObject:runTimesArray forKey:@"runTimes"];
    
}

@end
