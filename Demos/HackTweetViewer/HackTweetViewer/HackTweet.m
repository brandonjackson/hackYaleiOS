//
//  HackTweet.m
//  HackTweetViewer
//
//  Created by Daniel Tahara on 1/13/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import "HackTweet.h"

@implementation HackTweet

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

@end
