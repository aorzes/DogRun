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
    NSArray *btnNames;
}

- (void)didMoveToView:(SKView *)view {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(contRun) name:@"myMessage" object:nil];
    [self contRun];
    [self addButton];
    
}

- (void)addButton {
    btnNames = @[@"tipkaWalk",@"tipkaRun",@"tipkaJump"];
    CGPoint position = CGPointMake(-60, -self.size.height/2+40);
    for (NSString *nme in btnNames) {
        SKSpriteNode *button = [SKSpriteNode spriteNodeWithImageNamed:nme];
        button.size = CGSizeMake(50, 50);
        button.position = position;
        button.zPosition = 3;
        button.name = nme;
        [self addChild:button];
        position.x += 60;
    }
}

- (void)contRun {
    dog = [[Dog alloc] initWithScene:self];
    dog.jmp = false;
    [dog run];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint p = [[touches anyObject]locationInNode:self];
    NSString *name = [self nodeAtPoint:p].name;
    int brButton = 0;
    for (NSString *nme in btnNames ) {
        if ([nme isEqualToString:name]) {
            break;
        }
        brButton++;
    }
    switch (brButton) {
        case 0:
            if (!dog.jmp) [dog walk];
            break;
        case 1:
            if (!dog.jmp) [dog run];
            break;
        case 2:
            if (!dog.jmp) [dog jump];
            break;
        default:
            break;
    }
    
}

@end
