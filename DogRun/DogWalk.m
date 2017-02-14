//
//  DogWalk.m
//  DogRun
//
//  Created by Anton Orzes on 14/02/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "DogWalk.h"

@implementation DogWalk

- (id)initWithPosition:(CGPoint)position {
    self = [super init];
    if (self) {
        self.position = position;
        self.size = CGSizeMake(200, 100);
        self.texture = [SKTexture textureWithImageNamed: @"dogWalk1"];
        NSArray *dogArray = @[@"dogWalk1",@"dogWalk2",@"dogWalk3",
                              @"dogWalk4",@"dogWalk5",@"dogWalk6",
                              @"dogWalk7",@"dogWalk8"];
        NSMutableArray *dogTexture = [[NSMutableArray alloc]init];
        for (NSString *name in dogArray) {
            [dogTexture addObject:[SKTexture textureWithImageNamed: name]];
        }
        SKAction *dogAnimation = [SKAction repeatActionForever:
                                  [SKAction animateWithTextures:dogTexture timePerFrame:0.15]];
        [self runAction:dogAnimation];
        
    }
    return self;
}

@end
