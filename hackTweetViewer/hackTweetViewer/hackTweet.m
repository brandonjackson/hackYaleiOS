//
//  hackTweet.m
//  hackTweetViewer
//
//  Created by Daniel Tahara on 1/10/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import "hackTweet.h"

@implementation hackTweet
@synthesize user, userIcon, content;

-(id)initWithUser:(NSString*)name userIcon:(UIImage*)icon content:(NSString*)message
{
    self = [super init];
    
    if (self) {
        self.user = name;
        self.userIcon = icon;
        self.content = message;
    }
    
    return self;
}

-(void)dealloc
{
    [user release];
    [userIcon release];
    [content release];
    
    [super dealloc];
}
@end
