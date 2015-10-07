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

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isEditSelected = false;
    self.editNameTextField.hidden = YES;
    // Do any additional setup after loading the view.
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
