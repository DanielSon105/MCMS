//
//  CreatureViewController.m
//  MCMS2
//
//  Created by Daniel Barrido on 10/6/15.
//  Copyright © 2015 Dan Corey Co. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UIButton *editButton;

@property BOOL isEditSelected;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isEditSelected = false;
    // Do any additional setup after loading the view.
}

- (IBAction)onEditButtonPressed:(UIButton *)sender {

    if (self.isEditSelected) {
        sender.titleLabel.text = @"Edit";
        self.isEditSelected = false;
//        self.editButton.titleLabel.text = @"Done";
    } else {
        sender.titleLabel.text = @"Done";
        self.isEditSelected = true;
//        self.editButton.titleLabel.text = @"Edit";
    }



//    if ([self.editButton.titleLabel.text isEqualToString:@"Edit"]) {
//        NSLog(@"Edit");
////        self.editing = false;
//        self.editButton.titleLabel.text = @"Done";
//    } else {
//        NSLog(@"Done");
//        self.editButton.titleLabel.text = @"Edit";
//    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
