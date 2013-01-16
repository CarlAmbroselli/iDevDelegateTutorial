//
//  iDevTableViewController.h
//  iDeveloperDelegates
//
//  Created by Carl Ambroselli on 16.01.13.
//  Copyright (c) 2013 Carl Ambroselli. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iDevMagicViewController.h"

@interface iDevTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, crazyDelegate>

-(void)doCrazyShid:(id)sender;

@property(nonatomic, strong) NSArray *daten;
@property(nonatomic, strong) IBOutlet UITableView *iDevTableView;


@end
