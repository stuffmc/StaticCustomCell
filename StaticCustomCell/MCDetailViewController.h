//
//  MCDetailViewController.h
//  StaticCustomCell
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 14.02.13.
//  Copyright (c) 2013 Pomcast.biz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
