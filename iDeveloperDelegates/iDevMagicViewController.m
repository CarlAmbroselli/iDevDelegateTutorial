//
//  iDevMagicViewController.m
//  iDeveloperDelegates
//
//  Created by Carl Ambroselli on 16.01.13.
//  Copyright (c) 2013 Carl Ambroselli. All rights reserved.
//

#import "iDevMagicViewController.h"

@interface iDevMagicViewController ()

@end

@implementation iDevMagicViewController

@synthesize delegate;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)magicButtonTouched:(id)sender
{
    if([delegate respondsToSelector:@selector(doCrazyShid:)]){
        [delegate doCrazyShid:self];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
