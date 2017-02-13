//
//  Dog.m
//  DogRun
//
//  Created by Anton Orzes on 12/02/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "Dog.h"


@implementation Dog

- (id)initWithScene:(SKScene *)scene {
    scena = scene;
    _jmp = false;
    return self;
}

- (void)run {

    dogRun = [[DogRun alloc]initWithPosition:CGPointMake(0, 0)];
    [dogJump removeFromParent];
    [scena addChild:dogRun];

}

- (void)jump {
    _jmp = true;
    dogJump = [[DogJump alloc]initWithPosition:CGPointMake(0, 0)];
    [dogRun removeFromParent];
    [scena addChild:dogJump];
    
}

@end
