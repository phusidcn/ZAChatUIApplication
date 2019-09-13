//
//  ImageMessage.h
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageMessage : Message
@property UIImage* image;
- (instancetype) initWithSender:(NSString *)sender Time:(NSString *)time Icon:(UIImage *)icon AndImage:(UIImage*) image;
@end

NS_ASSUME_NONNULL_END
