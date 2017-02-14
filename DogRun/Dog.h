//
//  Dog.h
//  DogRun
//
//  Created by Anton Orzes on 12/02/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "DogJump.h"
#import "DogRun.h"
#import "DogWalk.h"

@interface Dog : SKSpriteNode
{
    DogRun *dogRun;
    DogJump *dogJump;
    DogWalk *dogWalk;
    SKScene *scena;
}

@property bool jmp;

- (id)initWithScene:(SKScene *)scene;
- (void)run;
- (void)jump;
- (void)walk;


@end
