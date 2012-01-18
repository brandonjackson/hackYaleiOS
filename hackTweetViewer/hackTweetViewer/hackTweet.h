//
//  HackTweet.h
//  HackTweetViewer
//
//  Created by Daniel Tahara on 1/13/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HackTweet : NSObject

@property (nonatomic, retain) NSString *user;
@property (nonatomic, retain) UIImage *userIcon;
@property (nonatomic, retain) NSString *content;

-(id)initWithUser:(NSString*)name userIcon:(UIImage*)icon content:(NSString*)message;

@end
