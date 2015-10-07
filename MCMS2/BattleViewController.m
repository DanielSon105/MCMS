//
//  BattleViewController.m
//  MCMS2
//
//  Created by Daniel Barrido on 10/6/15.
//  Copyright © 2015 Dan Corey Co. All rights reserved.
//

#import "BattleViewController.h"
#import "MagicalCreature.h"

@interface BattleViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *yourMonsterImage;
@property (weak, nonatomic) IBOutlet UIImageView *randomMonsterImage;
@property MagicalCreature *chosenCreature;
@property MagicalCreature *randomCreature;
@property MagicalCreature *winningCreature;

@end

@implementation BattleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onButtonPressed:(id)sender {
    NSString *monster = @"Bob";
    UIAlertController *winAlert = [UIAlertController alertControllerWithTitle:@"Flawless Victory!" message:[NSString stringWithFormat:@"%@ wins", monster] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Fight Again" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [self performSegueWithIdentifier:@"segue.push.alert" sender:self];
    }];
    [winAlert addAction:cancel];
    [self presentViewController:winAlert animated:true completion:nil];
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
