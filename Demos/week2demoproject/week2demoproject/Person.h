//
//  Person.h
//  week2demoproject
//
//  Created by Daniel Tahara on 2/12/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString* _birthName;
    NSColor* _hairColor;
    //NSMutableString *nickname;
}

-(id)initWithName:(NSString*)name;
-(id)initWithName:(NSString*)name hairColor:(NSColor*)color;

@property (nonatomic, strong, readonly) NSString* _birthName;
@property (nonatomic, strong, readwrite) NSColor* _hairColor;

@end
