//
//  CreatureViewController.m
//  MCMS2
//
//  Created by Daniel Barrido on 10/6/15.
//  Copyright © 2015 Dan Corey Co. All rights reserved.
//

#import "MagicalCreatureViewController.h"
#import "ViewController.h"

@interface MagicalCreatureViewController ()

@property BOOL isEditSelected;
@property (weak, nonatomic) IBOutlet UITextField *editNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *creatureAttackLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation MagicalCreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isEditSelected = false;
    self.editNameTextField.hidden = YES;
    self.creatureNameLabel.text = self.creature.name;
    self.creatureAttackLabel.text = self.creature.attack;
    self.imageView.image = self.creature.image;

}

- (IBAction)onEditButtonPressed:(UIBarButtonItem *)sender {

    if (self.isEditSelected) {
        sender.title = @"Edit";
        self.isEditSelected = false;
        self.editNameTextField.hidden = YES;

    } else {
        sender.title = @"Done";
        self.isEditSelected = true;
        self.editNameTextField.hidden = NO;

    }
}

-(NSInteger)tableView2:(UITableView *)tableView2 numberOfRowsInSection:(NSInteger)section{

    return self.creature.accessories.count;
}

-(UITableViewCell *)tableView2:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView2 dequeueReusableCellWithIdentifier:@"CellID2"];
    NSString *accessory = [self.creature.accessories objectAtIndex:indexPath.row];
    cell.textLabel.text = accessory;
    return cell;
}

@end
