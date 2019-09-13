//
//  Message.h
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    plaintTextMessage,
    imageMessage,
} messageType;

@interface Message : NSObject
@property NSString* senderName;
@property NSString* time;
@property UIImage* icon;
- (instancetype) initWithSender:(NSString*) sender Time:(NSString*) time Icon:(UIImage*) icon;
@end

NS_ASSUME_NONNULL_END
