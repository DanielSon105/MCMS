//
//  MagicalCreature.h
//  MCMS2
//
//  Created by Daniel Barrido on 10/6/15.
//  Copyright © 2015 Dan Corey Co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicalCreature : NSObject
@property NSString *name;
@property NSString *attack;
@property UIImage *image;
@property NSMutableArray *accessories;

-(instancetype)initWithName:(NSString *)name andAttack:(NSString *)attack andImage:(UIImage *)image andAccessories:(NSMutableArray *)accessories;



@end
