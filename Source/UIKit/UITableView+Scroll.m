//
//  UITableView+Scroll.m
//
//  Created by Ignacio Romero Zurbuchen on 11/26/13.
//  Copyright (c) 2013 DZN Labs.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "UITableView+Scroll.h"

@implementation UITableView (Scroll)

- (void)scrollToTopAnimated:(BOOL)animated
{
    [self scrollToRowAtIndexPath:[self firstIndexPath] atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

- (void)scrollToBottomAnimated:(BOOL)animated
{
    [self scrollToRowAtIndexPath:[self lastIndexPath] atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

- (NSIndexPath *)firstIndexPath
{
    return [NSIndexPath indexPathForRow:0 inSection:0];
}

- (NSIndexPath *)lastIndexPath
{
    NSInteger lastSection = [self.dataSource numberOfSectionsInTableView:self]-1;
    NSInteger lastRow = [self.dataSource tableView:self numberOfRowsInSection:lastSection]-1;
    
    NSLog(@"%s indexPath row : %d section : %d", __FUNCTION__, lastRow, lastSection);

    if (lastSection < 0) lastSection = 0;
    if (lastRow < 0) lastRow = 0;
    
    NSLog(@"%s indexPath row : %d section : %d", __FUNCTION__, lastRow, lastSection);
    
    return [NSIndexPath indexPathForRow:lastRow inSection:lastSection];
}

@end
