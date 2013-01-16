//
//  iDevTableViewController.m
//  iDeveloperDelegates
//
//  Created by Carl Ambroselli on 16.01.13.
//  Copyright (c) 2013 Carl Ambroselli. All rights reserved.
//

#import "iDevTableViewController.h"

@interface iDevTableViewController ()

@end

@implementation iDevTableViewController

@synthesize daten;
@synthesize iDevTableView;

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
    // Do any additional setup after loading the view from its nib.
    daten = [[NSArray alloc] initWithObjects:@"Eins", @"Zwei", @"Drei", @"Vier", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Standard"];
    
    if(cell==NULL){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Standard"];
    }
    
    cell.textLabel.text = [daten objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [daten count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    iDevMagicViewController *magic = [[iDevMagicViewController alloc] initWithNibName:@"iDevMagicViewController" bundle:nil];
    magic.delegate = self;
    [self presentViewController:magic animated:YES completion:nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(void)doCrazyShid:(id)sender{
    daten = [[NSArray alloc] initWithObjects:@"Oh", @"My", @"God!", nil];
    [iDevTableView reloadData];
}

@end
