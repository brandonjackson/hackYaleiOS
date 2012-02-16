//
//  hyViewController.h
//  week3demoproject_complete
//
//  Created by Daniel Tahara on 2/15/12.
//  Copyright (c) 2012 Yale University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface hyViewController : UIViewController
{
    NSMutableArray *_questions;
    NSMutableArray *_answers;
    
    int _currentQuestion;
    
    IBOutlet UILabel *_questionLabel;
    IBOutlet UILabel *_answerLabel;

    //don't need buttons b/c not modifying their properties
}

- (IBAction)nextQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
