//
//  MCMasterViewController.m
//  StaticCustomCell
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 14.02.13.
//  Copyright (c) 2013 Pomcast.biz. All rights reserved.
//

#import "MCMasterViewController.h"

#import "MCTableViewCell.h"

@interface MCMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MCMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _objects = [@[[NSDate date]] mutableCopy];
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MCTableViewCell *cell = (MCTableViewCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];
    NSDate *object = _objects[indexPath.row];
    cell.coloredLabel.text = [object description];
    return cell;
}

@end
