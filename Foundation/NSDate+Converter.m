//
//  NSDate+Converter.m
//
//  Created by Ignacio Romero Zurbuchen on 2/6/13.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "NSDate+Converter.h"

@implementation NSDate (Converter)

+ (NSDate *)dateFromString:(NSString *)string andFormat:(NSString *)format
{
    [NSDateFormatter setDefaultFormatterBehavior:NSDateFormatterBehaviorDefault];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    
    return [dateFormatter dateFromString:string];
}

- (NSString *)stringFromDateWithFormat:(NSString *)format
{
    return [self stringFromDateWithFormat:format andLocale:[NSLocale currentLocale]];
}

- (NSString *)stringFromDateWithFormat:(NSString *)format andLocale:(NSLocale *)locale
{
    if (!self) return @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:locale];
    [dateFormatter setDateFormat:format];
    
    return [[dateFormatter stringFromDate:self] capitalizedString];
}

#warning Incomplete Implementation
- (NSDate *)dateInDays:(NSUInteger)days
{
    return nil;
}

#warning Incomplete Implementation
+ (NSDate *)dateForDay:(NSUInteger)day month:(NSUInteger)month andYear:(NSUInteger)year
{
    return nil;
}

#warning Untested Implementation
- (NSDate *)localTime
{
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger seconds = [tz secondsFromGMTForDate:self];
    return [NSDate dateWithTimeInterval:seconds sinceDate:self];
}

#warning Untested Implementation
- (NSDate *)globalTime
{
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger seconds = -[tz secondsFromGMTForDate:self];
    return [NSDate dateWithTimeInterval:seconds sinceDate:self];
}

@end
