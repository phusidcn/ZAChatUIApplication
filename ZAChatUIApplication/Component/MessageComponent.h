//
//  MessageComponent.h
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ComponentKit/ComponentKit.h>
#import "MessageHeaderComponent.h"
#import "MessageFooterComponent.h"
#import "MessageContentComponent.h"
#import "../Model/Message.h"
#import "../Model/TextMessage.h"
#import "../Model/ImageMessage.h"

NS_ASSUME_NONNULL_BEGIN

@interface MessageComponent : CKCompositeComponent
+ (instancetype) newWithMessage:(Message*) message;
@end

NS_ASSUME_NONNULL_END
