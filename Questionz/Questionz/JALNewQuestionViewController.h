//
//  JALNewQuestionViewController.h
//  Questionz
//
//  Created by Joshua Cooper on 4/14/13.
//  Copyright (c) 2013 Joshua Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JALNewQuestionViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UITextField *questionTextField;
@property (weak, nonatomic) IBOutlet UITextField *firstAnswerTextField;
@property (weak, nonatomic) IBOutlet UIStepper *uiStepperButton;

- (IBAction)doneButtonPress:(id)sender;
- (IBAction)addOptionButtonPress:(id)sender;

@end
