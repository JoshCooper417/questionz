//
//  JALViewController.h
//  Questionz
//
//  Created by Joshua Cooper on 4/14/13.
//  Copyright (c) 2013 Joshua Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JALViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
