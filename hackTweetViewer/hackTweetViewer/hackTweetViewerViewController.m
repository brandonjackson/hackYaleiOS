//
//  HackTweetViewerViewController.m
//  HackTweetViewer
//
//  Created by Daniel Tahara on 1/13/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import "HackTweetViewerViewController.h"

#import "HackTweet.h"

@implementation HackTweetViewerViewController

@synthesize tweetList;
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        tweetList = [[NSMutableArray alloc] init];
    }
    
    return self;
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self fetchTweets];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section 
{
    return [tweetList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"myCell";
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier] autorelease];
    }
    
    int index = indexPath.row;
    
    HackTweet *currentTweet = [self.tweetList objectAtIndex:index];
    NSLog(@"%@", currentTweet.content);
    cell.textLabel.text = currentTweet.user;
    cell.detailTextLabel.text = currentTweet.content;
    cell.imageView.image= currentTweet.userIcon;
    
    return cell;//UITableViewCell* [tableVie
}

#pragma mark - UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *alertMessage = [NSString stringWithFormat:@"You selected cell at row %d", indexPath.row];
    
    UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:alertMessage message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil] autorelease];
    
    [alert show];
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - Custom Methods

- (void)fetchTweets
{
    
    if (!tweetList) {
        tweetList = [[NSMutableArray alloc] init];
    }
    
    
    
    //hard coded data
    UIImage *bayImage = [[[UIImage alloc] initWithContentsOfFile:@"HackYaleBarLogo-02.png"] autorelease];
    
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
    [tweetList addObject:[[[HackTweet alloc] initWithUser:@"Bay Gross" userIcon:bayImage content:@"#HackYale applications are live!"] autorelease]];
}

@end
