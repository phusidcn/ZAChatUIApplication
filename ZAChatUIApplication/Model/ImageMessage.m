//
//  ImageMessage.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "ImageMessage.h"

@implementation ImageMessage
- (instancetype) initWithSender:(NSString*)sender Time:(NSString*)time Icon:(UIImage*)icon AndImage:(UIImage*) image {
    self = [super initWithSender:sender Time:time Icon:icon];
    if (self) {
        self.image = image;
    }
    return self;
}
@end
