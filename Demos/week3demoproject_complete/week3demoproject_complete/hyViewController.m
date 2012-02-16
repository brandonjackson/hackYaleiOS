//
//  hyViewController.m
//  week3demoproject_complete
//
//  Created by Daniel Tahara on 2/15/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import "hyViewController.h"

@implementation hyViewController


- (IBAction)nextQuestion:(id)sender
{
    _currentQuestion = (_currentQuestion + 1) % [_questions count];
    
    NSString *question = [_questions objectAtIndex:_currentQuestion];
    
    [_questionLabel setText:question];
    [_answerLabel setText:@"Click \"Show Answer\" to reveal answer"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString* answer = [_answers objectAtIndex:_currentQuestion];
    
    [_answerLabel setText:answer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    _currentQuestion = 0;
    _questions = [[NSMutableArray alloc] init];
    _answers = [[NSMutableArray alloc] init];
    
    [_questions addObject:@"What is the proper name and syntax for a function call on an argument?"];
    [_answers addObject:@"Messaging; [obj method:argument]"];
    
    [_questions addObject:@"What is the purpose of the controller?"];
    [_answers addObject:@"The controller receives user input and initiates a response by making calls on model objects. A controller accepts input from the user and instructs the model and a view port to perform actions based on that input."];
    
    [_questions addObject:@"In what year was Yale founded?"];
    [_answers addObject:@"1707"];
    
    [_questions addObject:@"In what year was Yale founded?"];
    [_answers addObject:@"In what year was Yale founded?"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [_questionLabel release];
    _questionLabel = nil;
    [_answerLabel release];
    _answerLabel = nil;
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

- (void)dealloc {
    [_questionLabel release];
    [_answerLabel release];
    [super dealloc];
}
@end
