//
//  ViewController.m
//  TableviewTest
//
//  Created by Chopra, Varun on 11/29/17.
//  Copyright © 2017 None. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (strong, nonatomic) NSArray *tableData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableData = [[NSArray alloc] init];
    _tableData = @[@"One", @"Two", @"Three"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return [_tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    TableCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[TableCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    cell.cell_label.text = [_tableData objectAtIndex:indexPath.row];
    cell.delegationListener = self;
    
    return cell;
}

- (void)didPressButton:(TableCellTableViewCell *)theCell {
    NSLog(@"didPressButton (function in tableview) for cell with tag: %@", theCell.cell_label.text);
}

@end
