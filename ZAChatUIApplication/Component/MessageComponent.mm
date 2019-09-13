//
//  MessageComponent.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "MessageComponent.h"

@implementation MessageComponent
+ (instancetype) newWithMessage:(Message *)message {
    if ([message isKindOfClass:[TextMessage class]]) {
        TextMessage* textMessage = message;
        return [super newWithComponent:[CKBackgroundLayoutComponent newWithComponent:[CKInsetComponent newWithInsets:UIEdgeInsetsMake(10, 10, 10, 10) component:[CKFlexboxComponent newWithView:{} size:{} style:{} children:{
            {
                [CKInsetComponent newWithInsets:{} component:[MessageHeaderComponent newWithName:message.senderName]]
            },
            {
                [CKInsetComponent newWithInsets:{} component:[MessageContentComponent newWithPlaintText:textMessage.messageContent OrImage:nil]]
            },
            {
                [CKInsetComponent newWithInsets:{} component:[MessageFooterComponent newWithTime:message.time]]
            }
        }]] background:[CKComponent newWithView:{
            [UIView class],
            {
                {@selector(setBackgroundColor:), [UIColor whiteColor]}
            }
        } size:{}]]];
    }
    if ([message isKindOfClass:[ImageMessage class]]) {
        ImageMessage* imageMessage = message;
        return [super newWithComponent:[CKBackgroundLayoutComponent newWithComponent:[CKInsetComponent newWithInsets:UIEdgeInsetsMake(10, 10, 10, 10) component:[CKFlexboxComponent newWithView:{} size:{} style:{} children:{
            {
                [CKInsetComponent newWithInsets:{} component:[MessageHeaderComponent newWithName:message.senderName]]
            },
            {
                [CKInsetComponent newWithInsets:{} component:[MessageContentComponent newWithPlaintText:nil OrImage:imageMessage.image]]
            },
            {
                [CKInsetComponent newWithInsets:{} component:[MessageFooterComponent newWithTime:message.time]]
            }
        }]] background:[CKComponent newWithView:{
            [UIView class],
            {
                {@selector(setBackgroundColor:), [UIColor whiteColor]}
            }
        } size:{}]]];

    } else {
        return nil;
    }
}
@end
