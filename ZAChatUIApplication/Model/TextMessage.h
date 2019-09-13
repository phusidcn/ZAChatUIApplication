//
//  TextMessage.h
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

NS_ASSUME_NONNULL_BEGIN

@interface TextMessage : Message
@property NSString* messageContent;
- (instancetype) initWithSender:(NSString *)sender Time:(NSString *)time Icon:(UIImage *)icon AndContent:(NSString*) content;
@end

NS_ASSUME_NONNULL_END
