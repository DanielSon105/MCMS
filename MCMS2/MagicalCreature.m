//
//  MagicalCreature.m
//  MCMS2
//
//  Created by Daniel Barrido on 10/6/15.
//  Copyright © 2015 Dan Corey Co. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithName:(NSString *)name andAttack:(NSString *)attack andImage:(UIImage *)image andAccessories:(NSMutableArray *)accessories {
    self = [super init];
    if (self) {
        self.name = name;
        self.attack = attack;
        self.image = image;
        self.accessories = accessories;
    }

    return self;
}

@end
