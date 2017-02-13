//
//  DogJump.m
//  DogRun
//
//  Created by Anton Orzes on 13/02/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "DogJump.h"


@implementation DogJump

- (id)initWithPosition:(CGPoint)position{
    self = [super init];
    if (self) {
        self.position = position;
        self.size = CGSizeMake(200, 150);
        self.texture = [SKTexture textureWithImageNamed: @"dogJump1"];
        NSArray *dogArray = @[@"dogJump1",@"dogJump2",@"dogJump3",
                              @"dogJump4",@"dogJump5",@"dogJump6",
                              @"dogJump7",@"dogJump8",@"dogJump9",
                              @"dogJump10"];
        NSMutableArray *dogTexture = [[NSMutableArray alloc]init];
        for (NSString *name in dogArray) {
            [dogTexture addObject:[SKTexture textureWithImageNamed: name]];
        }
        SKAction *dogAnimation =[SKAction sequence:@[
                                [SKAction group:@[[SKAction sequence:@[
                                   [SKAction moveBy:CGVectorMake(0, 100) duration:0.75],
                                   [SKAction moveBy:CGVectorMake(0, -100) duration:0.75]]],
                                  [SKAction animateWithTextures:dogTexture timePerFrame:0.15]]],
                                [SKAction performSelector:@selector(remove) onTarget:self]]];
        [self runAction:dogAnimation];
        
    }
    return self;
}
- (void)remove {
    [self removeFromParent];
    NSNotification *notification = [NSNotification notificationWithName:@"myMessage" object:self userInfo:nil];
    [[NSNotificationCenter defaultCenter]postNotification:notification];
}
@end
