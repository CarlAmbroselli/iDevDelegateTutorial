//
//  iDevMagicViewController.h
//  iDeveloperDelegates
//
//  Created by Carl Ambroselli on 16.01.13.
//  Copyright (c) 2013 Carl Ambroselli. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol crazyDelegate <NSObject>

-(void)doCrazyShid:(id)sender;

@end

@interface iDevMagicViewController : UIViewController

-(IBAction)magicButtonTouched:(id)sender;

@property(nonatomic,assign)id delegate;

@end
