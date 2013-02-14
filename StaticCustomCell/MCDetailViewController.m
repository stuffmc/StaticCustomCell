//
//  MCDetailViewController.m
//  StaticCustomCell
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 14.02.13.
//  Copyright (c) 2013 Pomcast.biz. All rights reserved.
//

#import "MCDetailViewController.h"

@interface MCDetailViewController ()
- (void)configureView;
@end

@implementation MCDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
