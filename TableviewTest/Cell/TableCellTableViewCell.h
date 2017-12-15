//
//  TableCellTableViewCell.h
//  TableviewTest
//
//  Created by Chopra, Varun on 11/29/17.
//  Copyright © 2017 None. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableCellTableViewCell;

@protocol MyTableCellProtocoll <NSObject>

- (void) didPressButton:(TableCellTableViewCell *)theCell;

@end

@interface TableCellTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *cell_button;
@property (weak, nonatomic) IBOutlet UILabel *cell_label;
@property (nonatomic,assign) id<MyTableCellProtocoll> delegationListener;

- (void) buttonAction;

@end
