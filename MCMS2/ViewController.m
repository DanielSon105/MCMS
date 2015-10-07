//
//  ViewController.m
//  MCMS2
//
//  Created by Daniel Barrido on 10/6/15.
//  Copyright © 2015 Dan Corey Co. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "MagicalCreatureViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *creatureNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *creatureAttackTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image1 = [UIImage imageNamed:@"monster-image-hardcor.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"monster-image-danimal.png"];
    UIImage *image3 = [UIImage imageNamed:@"monster-image-amarican-chopper.png"];

    MagicalCreature *creature1 = [[MagicalCreature alloc] initWithName:@"HardCor" andAttack:@"Karate Chop" andImage: image1 andAccessories:[NSMutableArray arrayWithObjects:@"HardCor Parkour", @"Stapler", @"Clean Socks", @"Bottle o' Mojo", nil]];
    MagicalCreature *creature2 = [[MagicalCreature alloc] initWithName:@"Danimal" andAttack:@"Rabies Bite" andImage:image2 andAccessories:[NSMutableArray arrayWithObjects:@"Rat Trap", @"Fur Balls 'o Fire", @"Fangs", @"Drumsticks", nil]];
    MagicalCreature *creature3 = [[MagicalCreature alloc] initWithName:@"AmaricanChopper" andAttack:@"Brass Knuckle Punch" andImage:image3 andAccessories:[NSMutableArray arrayWithObjects:@"Bike", @"Ol' Lady", @"Patriotic Flag", @"Fists", @"Bottle o' Whiskey", nil]];

    self.creatures = [NSMutableArray arrayWithObjects:creature1, creature2, creature3, nil];

    for (MagicalCreature *creature in self.creatures) {
        NSLog(@"%@",creature.description);
    }

}
- (IBAction)onAddButtonTapped:(id)sender {
    UIImage *randomImage = [UIImage imageNamed:[NSString stringWithFormat:@"image%u.jpg", 1+arc4random_uniform(6)]];
    MagicalCreature *newCreature = [[MagicalCreature alloc]initWithName:self.creatureNameTextField.text andAttack:self.creatureAttackTextField.text andImage:randomImage andAccessories:nil];
    [self.creatures addObject:newCreature];
    [self.tableView reloadData];
    self.creatureNameTextField.text = @"";
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    MagicalCreatureViewController *dvc = segue.destinationViewController;
    dvc.creature = creature;

}


//    NSString *newToDoItem = self.textField.text; //Replace with Task *currentTask = [Task new];
//    //currentTask.taskName = self.textField.text;
//    [self.toDoList addObject:newToDoItem];
//    [self.tableView reloadData];
//    self.textField.text = @"";
//
//}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;

    return cell;
}


@end
