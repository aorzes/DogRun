//
//  DogRun.m
//  DogRun
//
//  Created by Anton Orzes on 13/02/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "DogRun.h"

@implementation DogRun

- (id)initWithPosition:(CGPoint)position {
    self = [super init];
    if (self) {
        self.position = position;
        self.size = CGSizeMake(200, 100);
        self.texture = [SKTexture textureWithImageNamed: @"dogRun1"];
        NSArray *dogArray = @[@"dogRun1",@"dogRun2",@"dogRun3",
                              @"dogRun4",@"dogRun5",@"dogRun6",
                              @"dogRun7",@"dogRun8"];
        NSMutableArray *dogTexture = [[NSMutableArray alloc]init];
        for (NSString *name in dogArray) {
            [dogTexture addObject:[SKTexture textureWithImageNamed: name]];
        }
        SKAction *dogAnimation = [SKAction repeatActionForever:
                                  [SKAction animateWithTextures:dogTexture timePerFrame:0.1]];
        [self runAction:dogAnimation];
        
    }
    return self;
}


@end
