//
//  JALNewQuestionViewController.m
//  Questionz
//
//  Created by Joshua Cooper on 4/14/13.
//  Copyright (c) 2013 Joshua Cooper. All rights reserved.
//

#import "JALNewQuestionViewController.h"

@interface JALNewQuestionViewController ()

@end

@implementation JALNewQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.questionTextField.delegate = self;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [tap setCancelsTouchesInView:NO];

	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard {
    [self.questionTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.questionTextField resignFirstResponder];
    return NO;
}

- (IBAction)doneButtonPress:(id)sender {

}

- (IBAction)addOptionButtonPress:(id)sender {
    UITextField* answerOption = [[UITextField alloc]init];
    [self.view addSubview: answerOption];
    [self.view reloadInputViews];
}
@end
