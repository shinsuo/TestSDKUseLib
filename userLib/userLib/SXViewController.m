//
//  SXViewController.m
//  userLib
//
//  Created by Shin Suo on 12-5-24.
//  Copyright (c) 2012年 CocoaChina. All rights reserved.
//

#import "SXViewController.h"

#import "TestSDKuseLib.h"

@interface SXViewController ()

@end

@implementation SXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TestSDKuseLib *temp = [[TestSDKuseLib alloc] init];
    
    [temp myConnection];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    
//    [temp release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
