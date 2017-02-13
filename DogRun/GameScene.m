//
//  GameScene.m
//  DogRun
//
//  Created by Anton Orzes on 12/02/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "GameScene.h"
#import "Dog.h"

@implementation GameScene {
    
    Dog *dog;
}

- (void)didMoveToView:(SKView *)view {

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(contRun) name:@"myMessage" object:nil];
    [self contRun];
    
}

- (void)contRun {
    dog = [[Dog alloc] initWithScene:self];
    dog.jmp = false;
    [dog run];

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (!dog.jmp) {
        [dog jump];
    }

}

@end
