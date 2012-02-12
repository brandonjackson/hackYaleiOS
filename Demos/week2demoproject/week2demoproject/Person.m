//
//  Person.m
//  week2demoproject
//
//  Created by Daniel Tahara on 2/12/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize _birthName = birthName;
@synthesize _hairColor = hairColor;

-(id)initWithName:(NSString *)name
{
    return [self initWithName:name hairColor:[NSColor colorWithSRGBRed:255 green:255 blue:255 alpha:1]];
}

-(id)initWithName:(NSString*)name hairColor:(NSColor*)color
{
    self = [super init];
    if (self) {
        _birthName = name;
        _hairColor = color;
    }
    return self;
}

@end
