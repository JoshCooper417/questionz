//
//  JALViewController.m
//  Questionz
//
//  Created by Joshua Cooper on 4/14/13.
//  Copyright (c) 2013 Joshua Cooper. All rights reserved.
//

#import "JALViewController.h"

@interface JALViewController ()

@end

@implementation JALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindFromShowDetailView:(UIStoryboardSegue *)segue{}

-(IBAction)unwindFromNewQuestionView:(UIStoryboardSegue *)segue{}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell" forIndexPath:indexPath];
    return cell;
}

@end
