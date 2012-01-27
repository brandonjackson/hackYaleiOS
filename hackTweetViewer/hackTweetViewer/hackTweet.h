//
//  HackTweet.h
//  HackTweetViewer
//
//  Created by Daniel Tahara on 1/13/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HackTweet : NSObject

@property (nonatomic, strong) NSString *user;
@property (nonatomic, strong) UIImage *userIcon;
@property (nonatomic, strong) NSString *content;

-(id)initWithUser:(NSString*)name userIcon:(UIImage*)icon content:(NSString*)message;

@end
