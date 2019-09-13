//
//  TextMessage.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "TextMessage.h"

@implementation TextMessage
- (instancetype) initWithSender:(NSString *)sender Time:(NSString *)time Icon:(UIImage *)icon AndContent:(NSString *)content {
    self = [super initWithSender:sender Time:time Icon:icon];
    if (self) {
        self.messageContent = content;
    }
    return self;
}
@end
