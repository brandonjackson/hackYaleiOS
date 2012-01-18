//
//  HackTweetViewerViewController.h
//  HackTweetViewer
//
//  Created by Daniel Tahara on 1/13/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HackTweetViewerViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *tweetList;
}

@property (nonatomic, readonly) NSMutableArray *tweetList;

-(void)fetchTweets;

@end
