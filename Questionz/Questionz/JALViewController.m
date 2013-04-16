//
//  JALViewController.m
//  Questionz
//
//  Created by Joshua Cooper on 4/14/13.
//  Copyright (c) 2013 Joshua Cooper. All rights reserved.
//

#import "JALViewController.h"
#import "JALNewQuestionViewController.h"

@interface JALViewController ()

@end

@implementation JALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.questions = [[NSMutableArray alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindFromShowDetailView:(UIStoryboardSegue *)segue{}

-(IBAction)unwindFromNewQuestionView:(UIStoryboardSegue *)segue{
    JALNewQuestionViewController* vc = segue.sourceViewController;
    NSString* newquestion = [[NSString alloc]init];
    newquestion = vc.questionTextField.text;
    [self.questions addObject:newquestion];
    [self.tableView reloadData];

}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    return 5;
    return self.questions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell" forIndexPath:indexPath];
    NSString* question = [self.questions objectAtIndex:indexPath.row];
    cell.textLabel.text = question;
    return cell;
}

@end
