//
//  TableCellTableViewCell.m
//  TableviewTest
//
//  Created by Chopra, Varun on 11/29/17.
//  Copyright © 2017 None. All rights reserved.
//

#import "TableCellTableViewCell.h"

@implementation TableCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)buttonClicked:(id)sender {
    [self buttonAction];
}

- (void) buttonAction
{
    NSLog(@"buttonpressed (in cell subclass)");
    [self.delegationListener didPressButton:self];
}

@end
