//
//  MessageContentComponent.h
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <ComponentKit/ComponentKit.h>
#import "../Model/Message.h"

NS_ASSUME_NONNULL_BEGIN

@interface MessageContentComponent : CKCompositeComponent
+ (instancetype) newWithPlaintText:(NSString* _Nullable) text OrImage:(UIImage* _Nullable) image;
@end

NS_ASSUME_NONNULL_END
