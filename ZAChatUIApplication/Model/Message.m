//
//  Message.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "Message.h"

@implementation Message
- (instancetype) initWithSender:(NSString *)sender Time:(NSString *)time Icon:(UIImage *)icon {
    self = [super init];
    if (self) {
        self.senderName = sender;
        self.time = time;
        self.icon = icon;
    }
    return self;
}
@end
