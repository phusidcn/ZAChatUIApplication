//
//  MessageFooterComponent.h
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ComponentKit/ComponentKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MessageFooterComponent : CKCompositeComponent
+ (instancetype) newWithTime:(NSString*) time;
@end

NS_ASSUME_NONNULL_END
